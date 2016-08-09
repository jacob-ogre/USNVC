# BSD_2_clause

#' Return a vector of all 'downstream' vertices in a graph from a given vertex
#'
#' @param g The graph from which to get the children
#' @param v The `name` of the vertex to get children for
#' @return A vector of the `name`s of children vertices from v
#' @seealso \link{get_ancestors}
#' @importFrom igraph subcomponent
#' @export
#' @examples
#' \dontrun{
#' get_children(NVC_graph, "856963")
#' }
get_children <- function(g, v) {
  # if(is.numeric(v)) v <- as.character(v)
  return(igraph::subcomponent(g, v, "out"))
}

#' Return a vector of all 'upstream' vertices in a graph from a given vertex
#'
#' @param g The graph from which to get the children
#' @param v The `name` of the vertex to get ancestors for
#' @return A vector of the `name`s of ancestor vertices from v to root Class
#' @seealso \link{get_ancestors}
#' @importFrom igraph subcomponent
#' @export
#' @examples
#' \dontrun{
#' get_ancestors(NVC_graph, "856963")
#' }
get_ancestors <- function(g, v) {
  # if(is.numeric(v)) v <- as.character(v)
  return(igraph::subcomponent(g, v, "in"))
}

#' Get the root Class for any given leaf vertex
#'
#' More detailed description of the function
#' @param g The graph to be queried
#' @param leaf A character string of the name of the leaf node to trace back
#' @return A vector of the path from the leaf node to its Class root
#' @importFrom igraph shortest_paths get.vertex.attribute
#' @export
#' @examples
#' \dontrun{
#' get_root_path("Temperate Interstitial Shore")
#' }
get_root_path <- function(g, leaf) {
  path <- igraph::shortest_paths(g, mode = "all",
                                 from = match("Natural", V(g)$ELE),
                                 to = match(leaf, V(g)$colloquial))$vpath
  names <- igraph::get.vertex.attribute(g,
                                        "colloquial",
                                        index = V(g)[path[[1]]])
  return(names[2:length(names)])
}

#' Find the path between nodes in the NVC graph
#'
#' More detailed description of the function
#' @param g The graph to traverse
#' @param node1 The starting node in the path
#' @param node2 The end node in the path
#' @return A list of the node (categories) on the path from node1 to node2
#' @importFrom igraph shortest_paths get.vertex.attribute
#' @export
#' @examples
#' path_between_cats(NVC_graph,
#'                   "Wet Coosa Valley Barrens",
#'                   "Shale Barren Slopes")
path_between_cats <- function(g, node1, node2) {
  path <- igraph::shortest_paths(g, mode = "all",
                                 from = match(node1, V(g)$colloquial),
                                 to = match(node2, V(g)$colloquial))$vpath
  names <- igraph::get.vertex.attribute(g,
                                        "colloquial",
                                        index = V(g)[path[[1]]])
  return(names)
}
