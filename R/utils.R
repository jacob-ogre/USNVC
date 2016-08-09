# BSD_2_clause

#' Get description data for a level of the NVC hierarchy
#'
#' For natural assemblages, level is one of: Class, Subclass, Formation,
#' Division, Macrogroup, Group, Alliance, Association. For human-created
#' features, one of: Cultural Class, Cultural Subclass, Cultural Formation,
#' Cultural Subformation, Cultural Type, Cultural Group, Cultural Subgroup
#'
#' @param level The hierarchical level of the NVC to extract
#' @return A data.frame with global ID, colloquial name, and the type concept
#' @export
#' @examples
#' get_hier_desc("Class")
get_hier_desc <- function(level) {
  sub <- dplyr::filter(unit_data, hierarchyLevel == level)
  res <- dplyr::select(sub, ELEMENT_GLOBAL_ID, colloquialName, typeConcept)
  return(res)
}

#' Create data.frames needed for visNetwork visualization
#'
#' \code{visNetwork} has a helper function for igraph structures,
#' \code{visIgraph}, but setting certain attributes (e.g., labels) doesn't seem
#' to work well. This is a work-around.
#'
#' @param g The graph to be visualized
#' @return A list of two dataframes, nodes and edges
#' @seealso if any see alsos
#' @export
#' @examples
#' prep_for_visNetwork(graph_to_depth(NVC_graph, 4))
prep_for_visNetwork <- function(g) {
  df <- igraph::get.data.frame(g, "both")
  nodes <- df$vertices
  nodes$id <- nodes$name
  nodes$title <- paste0(nodes$CLASSIFICATION_LEVEL_NAME,
                        ": ",
                        nodes$colloquialName)
  nodes$group <- nodes$topClass
  nodes <- data.frame(id = nodes$name,
                      title = nodes$title,
                      group = nodes$group,
                      stringsAsFactors = F)
  edges <- df$edges
  edges$arrows <- "middle"
  return(list(nodes = nodes, edges = edges))
}

#' Return the concatenated typeConcepts for ancestors and children of a vertex
#'
#' An interesting (and perhaps useful) characteristic of a hierarchical system
#' like the NVC is that nodes inherit information from up and down the
#' hierarchy. More specifically, a node inherits from 'upstream' the character-
#' istics of its direct ancestors, and captures the characteristics of its
#' children ('downstream'). For example, the full description of an NVC Class
#' such as `Forest & Woodland` would include the information in its
#' \code{typeConcept} \emph{plus} the \code{typeConcept}s of the Subclasses,
#' Formations, on down to Associations. An NVC category below the Class
#' level, such as `Polar Tundra & Barrens`, inherits from its children (e.g.,
#' `Arctic Tundra & Barrens`) but also from its ancestors (`Temperate to Polar
#' Alpine & Tundra Vegetation` and `Polar & High Montane Scrub, Grassland &
#' Barrens`). We implicitly understand when we read a \code{typeConcept} for,
#' e.g., a `Formation`, that the characteristics of the `Subclass` and `Class`
#' are part of the concept. Importantly, a category doesn't inherit from any
#' category outside of its direct ancestry up to `Class`: outside of the lineage
#' there is something that differentiates the category.
#'
#' @param g The graph to be queried
#' @param v The NVC category for which the 'full' typeConcept will be created
#' @return A string of all relevant typeConcepts, concatenated with ' | '
#' @export
#' @examples
#' get_full_typeConcept(NVC_graph, "860275")
get_full_typeConcept <- function(g, v) {
  sub <- relatives_graph(g, v)
  full_tC <- paste(V(sub)$typeConcept, collapse = " | ")
  return(full_tC)
}
