# BSD_2_clause

#' Core NVC data (Unit & UnitDescription) as a graph
#'
#' The U.S. National Vegetation Classification (NVC) is provided as a series of
#' tables at \url{http://usnvc.org/explore-classification/}. The NVC is
#' fundamentally hierarchical; representation of the data as a directed
#' acyclic graph (DAG) is useful because of the tools available for graphs are
#' useful for traversing the hierarchy.
#'
#' @format An igraph graph with 8193 nodes and 8192 edges.
#' \describe{
#' \item{\code{ELEMENT_GLOBAL_ID}}{The unique identifier of the NVC category}
#' \item{\code{PARENT_ID}}{The identifier of the parent of the NVC category}
#' \item{\code{D_CLASSIFICATION_LEVEL_ID}}{A factor corresponding to the level
#'             of the hierarchy}
#' \item{\code{elementUID}}{ELEMENT_GLOBAL_ID prefixed with '2.', presumably to
#'             identify it as deriving from version 2 of the standard}
#' \item{\code{classificationCode}}{An alpha-numeric sequence indicating the
#'             placement of the category in the NVC hierarchy}
#' \item{\code{databaseCode}}{An identifier for creating an SQL database}
#' \item{\code{Status}}{Whether the category has been accepted into the NVC}
#' \item{\code{colloquialName}}{A 'common' name for the category, if available}
#' \item{\code{scientificName}}{A name for the category, which may include
#'             scientific names of characteristic taxa}
#' \item{\code{formattedScientificName}}{'scientificName' with HTML formatting}
#' \item{\code{translatedName}}{'scientificName' with common name substitution}
#' \item{\code{hierarchyLevel}}{Name of the level of the hierarchy}
#' \item{\code{unitSort}}{An alpha-numeric code indicating the placement of the
#'             category in the NVC; different from 'classificationCode'}
#' \item{\code{USstatus}}{A code ???}
#' \item{\code{parentKey}}{The 'databaseCode' of the parent of a category}
#' }
#' @source data source, if any
"unit_data"

#' Core NVC data (Unit & UnitDescription) as a graph
#'
#' The U.S. National Vegetation Classification (NVC) is provided as a series of
#' tables at \url{http://usnvc.org/explore-classification/}. The NVC is
#' fundamentally hierarchical; representation of the data as a directed
#' acyclic graph (DAG) is useful because of the tools available for graphs are
#' useful for traversing the hierarchy.
#'
#' @format An igraph graph with 8193 nodes and 8192 edges.
#' \describe{
#' \item{\code{var1}}{var1 description}
#' }
#' @source data source, if any
