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
#' @export
graph_to_depth <- function(g, depth) {
  center <- length(V(g)$name)
  to_dep <- make_ego_graph(g, depth, center)[[1]]
  return(to_dep)
}
