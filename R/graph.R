# BSD_2_clause

#' Make an igraph representation of the NVC
#'
#' Converting the tables from NVC to graph structures opens up many possibilities
#' for discovering novel patterns and extracting data. This uses a loop over the
#' parent category information to create the from-to links.
#'
#' @param df The NVC data.frame (or subset thereof) to convert to an igraph graph
#' @param directed Whether to return a directed graph (default = TRUE)
#' @return An \link{igraph} graph
#' @importFrom igraph graph_from_data_frame
#' @importFrom dplyr select filter
#' @export
#' @examples
#' \dontrun{
#' make_igraph(df)
#' }
make_igraph <- function(df, directed = TRUE) {
  res <- data.frame(from = as.numeric(df$PARENT_ID),
                    to = as.numeric(df$ELEMENT_GLOBAL_ID),
                    stringsAsFactors = FALSE)
  res$from <- ifelse(is.na(res$from),
                     1,
                     res$from)
  top <- c(1, rep(NA, 44))
  df <- rbind(df, top)
  g <- igraph::graph_from_data_frame(res,
                                     directed = directed,
                                     vertices = df)
  return(g)
}

#' Return the NVC graph out from the "center" at natural and cultural domains
#'
#' Useful, perhaps, for plotting a small version of the full NVC_graph.
#'
#' @param g The graph from which to get the subgraph
#' @param depth The distance from the center of g to extend the subgraph
#' @return An igraph subgraph of g, to distance `depth`
#' @importFrom igraph make_ego_graph V
#' @export
#' @examples
#' \dontrun{
#' graph_to_depth(NVC_graph, 2)
#' }
graph_to_depth <- function(g, depth) {
  center <- length(V(g)$name)
  to_dep <- igraph::make_ego_graph(g, depth, center)[[1]]
  return(to_dep)
}

#' Return an igraph of a vertex and all its children
#'
#' More detailed description of the function
#' @param g The graph from which to get children of vertex v
#' @param v The vertex of g from which to get 'downstream' vertices
#' @return A subgraph of g with v and its children
#' @seealso \link{ancestor_graph}
#' @importFrom igraph induced_subgraph
#' @export
#' @examples
#' children_graph(NVC_graph, "856963")
children_graph <- function(g, v) {
  res <- igraph::induced_subgraph(g, get_children(g, v))
  return(res)
}

#' Return an igraph of a vertex and all its ancestors to the root
#'
#' @param g The graph from which to get ancestors of vertex v
#' @param v The vertex of g from which to get 'upstream' vertices
#' @return A subgraph of g with v and its ancestors
#' @seealso \link{children_graph}
#' @importFrom igraph induced_subgraph
#' @export
#' @examples
#' ancestors_graph(NVC_graph, "856963")
ancestors_graph <- function(g, v) {
  res <- igraph::induced_subgraph(g, get_ancestors(g, v))
  return(res)
}

#' Return an igraph of all ancestors and children of vertex v
#'
#' @param g The graph from which to get ancestors of vertex v
#' @param v The vertex of g from which to get children and ancestor vertices
#' @return A subgraph of g with v and its ancestors and children
#' @seealso \link{children_graph}
#' @seealso \link{ancestors_graph}
#' @importFrom igraph union
#' @export
#' @examples
#' relatives_graph(NVC_graph, "856963")
relatives_graph <- function(g, v) {
  up <- ancestors_graph(g, v)
  down <- children_graph(g, v)
  res <- igraph::union(up, down)
  atts <- igraph::list.vertex.attributes(res)
  clna <- unique(stringr::str_replace(atts,
                                      pattern = "_[0-9]",
                                      replacement = ""))
  combo <- function(a1, a2) {
    if(length(a1) != length(a2)) stop(paste(length(a1), length(a2)))
    y <- rep(NA, length(a1))
    for(i in 1:length(y)) {
      if((is.na(a1[i]) | is.null(a1[i])) &
         (is.na(a2[i]) | is.null(a2[i]))) {
        y[i] <- NA
      } else if (is.na(a1[i]) | is.null(a1[i])) {
        y[i] <- a2[i]
      } else {
        y[i] <- a1[i]
      }
    }
    return(y)
  }
  for(i in clna[clna != "name"]) {
    tmp1 <- paste0(i, "_1")
    tmp2 <- paste0(i, "_2")
    att1 <- igraph::get.vertex.attribute(res, tmp1)
    att2 <- igraph::get.vertex.attribute(res, tmp2)
    newa <- combo(att1, att2)
    res <- igraph::delete_vertex_attr(res, tmp1)
    res <- igraph::delete_vertex_attr(res, tmp2)
    res <- igraph::set_vertex_attr(res, name = i, value = newa)
  }
  return(res)
}

# TODO: Add function to filter on state (Subnation) and fill subnation upstream,
# i.e., fill empty Subnation with union of child node Subnations

# TODO: Add function to filter on federalLands and fill upstream,
# i.e., fill empty federalLands with union of child node federalLands
