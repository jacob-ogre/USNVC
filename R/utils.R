# BSD_2_clause

#' Get description data for a level of the NVC hierarchy
#'
#' For natural assemblages, one of: Class, Subclass, Formation, Division,
#' Macrogroup, Group, Alliance, Association. For human-created features, one of:
#' Cultural Class, Cultural Subclass, Cultural Formation, Cultural Subformation,
#' Cultural Type, Cultural Group, Cultural Subgroup
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
