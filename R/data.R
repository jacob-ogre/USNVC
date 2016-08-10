# BSD_2_clause

#' Core NVC data (Unit & UnitDescription) as a data.frame
#'
#' The U.S. National Vegetation Classification (NVC) is provided as a series of
#' tables at \url{http://usnvc.org/explore-classification/}. This table is
#' from a \code{JOIN} of the Unit and UnitDescriptions database tables.
#'
#' @format A tibble with 8192 rows and 45 columns.
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
#' \item{\code{parentName}}{Another representation of the parent of a category}
#' \item{\code{typeConceptSentence}}{A concise sentence describing the category}
#' \item{\code{typeConcept}}{Text description of the conceptual model of the
#'             category}
#' \item{\code{classificationComments}}{Comments about the classification}
#' \item{\code{similarNVCtypesComments}}{Comments referencing similar categories}
#' \item{\code{diagnosticCharacteristics}}{Text description (with HTML tags) of
#'             the characteristics that differentiate the category}
#' \item{\code{Rationale}}{Unknown; all NA}
#' \item{\code{Physiognomy}}{Text description (with HTML tags) of the
#'             physiognomic characteristics (structure) of the category}
#' \item{\code{Floristics}}{Text description (with HTML tags) of the
#'             floral characteristics (species/groups) of the category}
#' \item{\code{Dynamics}}{Text description (with HTML tags) of the
#'             physical/ecological dynamics of the category}
#' \item{\code{Environment}}{Text description (with HTML tags) of the
#'             environmental characteristics (e.g., climate) of the category}
#' \item{\code{Analysis}}{Unknown; all NA}
#' \item{\code{Range}}{Text description of the category's geographical spread
#'             and/or relationship to other classifications}
#' \item{\code{spatialPattern}}{Categorical designation of how the NVC category
#'             is typically arranged, e.g., large patch vs. linear}
#' \item{\code{Nations}}{Comma-separated string of two-letter country codes
#'             indicating nations where the category is found}
#' \item{\code{Subnations}}{Comma-separated string of two-letter state and
#'             province codes indicating where the category is found}
#' \item{\code{federalLands}}{Semicolon-separated string of agency and site
#'             where the category is found}
#' \item{\code{tncEcoregions}}{Comma-separated string relating the category to
#'             one or more TNC ecoregion}
#' \item{\code{usfsEcoregions}}{Comma-separated string relating the category to
#'             one or more USDA Forest Service ecoregion}
#' \item{\code{omernikEcoregions}}{Unknown; all NA}
#' \item{\code{classif_confidence_id}}{A code describing Low:High confidence of
#'             the category classification; see \link{d_classif_confidence}}
#' \item{\code{confidenceComments}}{Text describing how/why the confidence level
#'             was assigned; mostly empty}
#' \item{\code{Synonymy}}{Text (with HTML tags) describing synonyms or approx.
#'             synonyms of the category to other classifications}
#' \item{\code{primaryConceptSource}}{Reference of the authority of the concept}
#' \item{\code{descriptionAuthor}}{The person/entity who authored the
#'             'description' (perhaps the typeConcept?)}
#' \item{\code{Acknowledgements}}{Text giving acknowledgement}
#' \item{\code{versionDate}}{Text date stamp, format = mm/dd/yyy}
#' \item{\code{CLASSIFICATION_LEVEL_NAME}}{Name of the level of the hierarchy;
#'             see also hierarchyLevel}
#' \item{\code{DISPLAY_ORDER}}{Numeric indicator of the category's placement in
#'             the hierarchy}
#' \item{\code{parent_level_id}}{Numeric indicator of the category's parent
#'             category}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"unit_data"

#' Core NVC data (Unit & UnitDescription) as a graph
#'
#' The U.S. National Vegetation Classification (NVC) is provided as a series of
#' tables at \url{http://usnvc.org/explore-classification/}. The NVC is
#' fundamentally hierarchical; representation of the data as a directed
#' acyclic graph (DAG) is useful because of the tools available for graphs are
#' useful for traversing the hierarchy.
#'
#' @format An \link[igraph]{igraph} graph with 8193 nodes and 8192 edges, and
#'         46 attributes identical to those of \link{unit_data}
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
#' \item{\code{parentName}}{Another representation of the parent of a category}
#' \item{\code{typeConceptSentence}}{A concise sentence describing the category}
#' \item{\code{typeConcept}}{Text description of the conceptual model of the
#'             category}
#' \item{\code{classificationComments}}{Comments about the classification}
#' \item{\code{similarNVCtypesComments}}{Comments referencing similar categories}
#' \item{\code{diagnosticCharacteristics}}{Text description (with HTML tags) of
#'             the characteristics that differentiate the category}
#' \item{\code{Rationale}}{Unknown; all NA}
#' \item{\code{Physiognomy}}{Text description (with HTML tags) of the
#'             physiognomic characteristics (structure) of the category}
#' \item{\code{Floristics}}{Text description (with HTML tags) of the
#'             floral characteristics (species/groups) of the category}
#' \item{\code{Dynamics}}{Text description (with HTML tags) of the
#'             physical/ecological dynamics of the category}
#' \item{\code{Environment}}{Text description (with HTML tags) of the
#'             environmental characteristics (e.g., climate) of the category}
#' \item{\code{Analysis}}{Unknown; all NA}
#' \item{\code{Range}}{Text description of the category's geographical spread
#'             and/or relationship to other classifications}
#' \item{\code{spatialPattern}}{Categorical designation of how the NVC category
#'             is typically arranged, e.g., large patch vs. linear}
#' \item{\code{Nations}}{Comma-separated string of two-letter country codes
#'             indicating nations where the category is found}
#' \item{\code{Subnations}}{Comma-separated string of two-letter state and
#'             province codes indicating where the category is found}
#' \item{\code{federalLands}}{Semicolon-separated string of agency and site
#'             where the category is found}
#' \item{\code{tncEcoregions}}{Comma-separated string relating the category to
#'             one or more TNC ecoregion}
#' \item{\code{usfsEcoregions}}{Comma-separated string relating the category to
#'             one or more USDA Forest Service ecoregion}
#' \item{\code{omernikEcoregions}}{Unknown; all NA}
#' \item{\code{classif_confidence_id}}{A code describing Low:High confidence of
#'             the category classification; see \link{d_classif_confidence}}
#' \item{\code{confidenceComments}}{Text describing how/why the confidence level
#'             was assigned; mostly empty}
#' \item{\code{Synonymy}}{Text (with HTML tags) describing synonyms or approx.
#'             synonyms of the category to other classifications}
#' \item{\code{primaryConceptSource}}{Reference of the authority of the concept}
#' \item{\code{descriptionAuthor}}{The person/entity who authored the
#'             'description' (perhaps the typeConcept?)}
#' \item{\code{Acknowledgements}}{Text giving acknowledgement}
#' \item{\code{versionDate}}{Text date stamp, format = mm/dd/yyy}
#' \item{\code{CLASSIFICATION_LEVEL_NAME}}{Name of the level of the hierarchy;
#'             see also hierarchyLevel}
#' \item{\code{DISPLAY_ORDER}}{Numeric indicator of the category's placement in
#'             the hierarchy}
#' \item{\code{parent_level_id}}{Numeric indicator of the category's parent
#'             category}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"NVC_graph"

#' Relates confidence IDs to their description
#'
#' @format A tibble with 5 rows and 4 columns
#' \describe{
#' \item{\code{D_CLASSIF_CONFIDENCE_ID}}{Code for classification confidence}
#' \item{\code{CLASSIF_CONFIDENCE_DESC}}{Description of classification
#'             confidence}
#' \item{\code{DISPLAY_ORDER}}{A factor corresponding to the level of the
#'             NVC hierarchy}
#' \item{\code{STATUS}}{Description of Accepted/Proposed}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_classif_confidence"

#' Relationships of classification levels
#'
#' @format A data.frame with 16 rows and 4 columns
#' \describe{
#' \item{\code{D_CLASSIF_LEVEL_ID}}{Code for classification level}
#' \item{\code{CLASSIFICATION_LEVEL_NAME}}{Name of the classification level}
#' \item{\code{DISPLAY_ORDER}}{A factor corresponding to the level of the
#'             NVC hierarchy}
#' \item{\code{parent_level_id}}{ID of parent to classification level}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_classification_level"

#' Relationships of presence/absence of NVC categories
#'
#' @format A data.frame with 3 rows and 3 columns
#' \describe{
#' \item{\code{D_CURR_PRESENCE_ABSENCE_ID}}{Code for presence/absence}
#' \item{\code{CURR_PRESENCE_ABSENCE_DESC}}{Description of presence/absence code}
#' \item{\code{CURR_PRESENCE_ABSENCE_CD}}{Unknown}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_curr_presence_absence"

#' Relationships of distribution codes for NVC categories
#'
#' @format A data.frame with 7 rows and 3 columns
#' \describe{
#' \item{\code{D_DIST_CONFIDENCE_ID}}{Numeric code for distribution confidence}
#' \item{\code{DIST_CONFIDENCE_CD}}{Character code for distribution confidence}
#' \item{\code{DIST_CONFIDENCE_DESC}}{Description of distribution confidence}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_dist_confidence"

#' Relationships of occurrence codes for NVC categories
#'
#' @format A data.frame with 6 rows and 3 columns
#' \describe{
#' \item{\code{D_OCCURRENCE_STATUS_ID}}{Numeric code for occurrence status}
#' \item{\code{OCCURRENCE_STATUS_CD}}{Character code for occurrence status}
#' \item{\code{OCCURRENCE_STATUS_DESC}}{Description of occurrence status}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_occurrence_status"

#' Relationships of subnation codes for NVC categories
#'
#' @format A data.frame with 77 rows and 4 columns
#' \describe{
#' \item{\code{SUBNATION_ID}}{Numeric code for subnation entity}
#' \item{\code{ISO_NATION_CD}}{Character ISO code for nation entity}
#' \item{\code{SUBNATION_CODE}}{Character code (abbrev.) for subnation entity}
#' \item{\code{SUBNATION_NAME}}{Text description of subnation entity}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_subnation"

#' Relationships of USDA Forest Service ecoregion fields
#'
#' Unclear whether the 2007 Forest Service ecoregions are newer or older than
#' the 'plain' Forest Service ecoregions. Also unclear where the values in
#' USFS_ECOREGION_CONCAT_CD come from.
#'
#' @format A data.frame with 771 rows and 6 columns
#' \describe{
#' \item{\code{USFS_ECOREGION_ID}}{Numeric code for USFS ecoregion}
#' \item{\code{PARENT_USFS_ECOREGION_ID}}{Parent ID for USFS ecoregion}
#' \item{\code{D_USFS_ECOREGION_LEVEL_ID}}{Numeric code of classification level}
#' \item{\code{USFS_ECOREGION_NAME}}{Name of USFS ecoregion}
#' \item{\code{USFS_ECOREGION_CLASS_CD}}{Character code for USFS class (level)}
#' \item{\code{USFS_ECOREGION_CONCAT_CD}}{Character code for USFS class +
#'             ecoregion, concatenated}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_usfs_ecoregion"

#' Relationships of 2007 USDA Forest Service ecoregion fields
#'
#' Unclear whether the 2007 Forest Service ecoregions are newer or older than
#' the 'plain' Forest Service ecoregions. Also unclear where the values in
#' USFS_ECOREGION_CONCAT_CD come from.
#'
#' @format A data.frame with 1506 rows and 5 columns
#' \describe{
#' \item{\code{USFS_ECOREGION_ID}}{Numeric code for 2007 USFS ecoregion}
#' \item{\code{PARENT_USFS_ECOREGION_ID}}{Parent ID for 2007 USFS ecoregion}
#' \item{\code{D_USFS_ECOREGION_LEVEL_ID}}{Numeric code of classification level}
#' \item{\code{USFS_ECOREGION_NAME}}{Name of 2007 USFS ecoregion}
#' \item{\code{USFS_ECOREGION_CONCAT_CD}}{Character code for USFS level +
#'             ecoregion, concatenated}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_usfs_ecoregion2007"

#' Relationships of USDA Forest Service ecoregion levels
#'
#' Unclear whether this is for Forest Service ecoregions 'plain' or 2007, but
#' presumably for the 'plain' version
#'
#' @format A data.frame with 8 rows and 3 columns
#' \describe{
#' \item{\code{D_USFS_ECOREGION_LEVEL_ID}}{Numeric code for USFS ecoregion level}
#' \item{\code{USFS_ECOREGION_LEVEL_DESC}}{Description of the ecoregion level}
#' \item{\code{D_USFS_ECOREGION_LEVEL_ID}}{Numeric code of parent ecoregion}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"d_usfs_ecoregion_level"

#' References cited in the NVC
#'
#' @format A data.frame with 6659 rows and 3 columns
#' \describe{
#' \item{\code{REFERENCE_ID}}{Numeric code for the reference}
#' \item{\code{SHORTCITATION}}{Author Year representation for the reference}
#' \item{\code{FULLCITATION}}{Full text citation; unclear if this follows an
#'             established citation style.}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"Reference"

#' NVC Unit table as a data.frame
#'
#' The U.S. National Vegetation Classification (NVC) is provided as a series of
#' tables at \url{http://usnvc.org/explore-classification/}.
#'
#' @format A tibble with 8192 rows and 14 columns.
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
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"Unit"

#' NVC UnitDescription table as a data.frame
#'
#' The U.S. National Vegetation Classification (NVC) is provided as a series of
#' tables at \url{http://usnvc.org/explore-classification/}.
#'
#' @format A tibble with 8192 rows and 29 columns.
#' \describe{
#' \item{\code{ELEMENT_GLOBAL_ID}}{The unique identifier of the NVC category}
#' \item{\code{parentKey}}{The 'databaseCode' of the parent of a category}
#' \item{\code{parentName}}{Another representation of the parent of a category}
#' \item{\code{typeConceptSentence}}{A concise sentence describing the category}
#' \item{\code{typeConcept}}{Text description of the conceptual model of the
#'             category}
#' \item{\code{classificationComments}}{Comments about the classification}
#' \item{\code{similarNVCtypesComments}}{Comments referencing similar categories}
#' \item{\code{diagnosticCharacteristics}}{Text description (with HTML tags) of
#'             the characteristics that differentiate the category}
#' \item{\code{Rationale}}{Unknown; all NA}
#' \item{\code{Physiognomy}}{Text description (with HTML tags) of the
#'             physiognomic characteristics (structure) of the category}
#' \item{\code{Floristics}}{Text description (with HTML tags) of the
#'             floral characteristics (species/groups) of the category}
#' \item{\code{Dynamics}}{Text description (with HTML tags) of the
#'             physical/ecological dynamics of the category}
#' \item{\code{Environment}}{Text description (with HTML tags) of the
#'             environmental characteristics (e.g., climate) of the category}
#' \item{\code{Analysis}}{Unknown; all NA}
#' \item{\code{Range}}{Text description of the category's geographical spread
#'             and/or relationship to other classifications}
#' \item{\code{spatialPattern}}{Categorical designation of how the NVC category
#'             is typically arranged, e.g., large patch vs. linear}
#' \item{\code{Nations}}{Comma-separated string of two-letter country codes
#'             indicating nations where the category is found}
#' \item{\code{Subnations}}{Comma-separated string of two-letter state and
#'             province codes indicating where the category is found}
#' \item{\code{federalLands}}{Semicolon-separated string of agency and site
#'             where the category is found}
#' \item{\code{tncEcoregions}}{Comma-separated string relating the category to
#'             one or more TNC ecoregion}
#' \item{\code{usfsEcoregions}}{Comma-separated string relating the category to
#'             one or more USDA Forest Service ecoregion}
#' \item{\code{omernikEcoregions}}{Unknown; all NA}
#' \item{\code{classif_confidence_id}}{A code describing Low:High confidence of
#'             the category classification; see \link{d_classif_confidence}}
#' \item{\code{confidenceComments}}{Text describing how/why the confidence level
#'             was assigned; mostly empty}
#' \item{\code{Synonymy}}{Text (with HTML tags) describing synonyms or approx.
#'             synonyms of the category to other classifications}
#' \item{\code{primaryConceptSource}}{Reference of the authority of the concept}
#' \item{\code{descriptionAuthor}}{The person/entity who authored the
#'             'description' (perhaps the typeConcept?)}
#' \item{\code{Acknowledgements}}{Text giving acknowledgement}
#' \item{\code{versionDate}}{Text date stamp, format = mm/dd/yyy}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"UnitDescription"

#' Relationships of USDA Forest Service ecoregions to NVC categories
#'
#' Appears to be an expansion of the \code{usfsEcoregions} field in
#' \link{UnitDescription} with information on occurrence added in.
#'
#' @format A data.frame with 45914 rows and 3 columns
#' \describe{
#' \item{\code{ELEMENT_GLOBAL_ID}}{The unique identifier of the NVC category}
#' \item{\code{USFS_ECOREGION_ID}}{Numeric code for USFS ecoregion}
#' \item{\code{D_OCCURRENCE_STATUS_ID}}{Numeric code for occurrence status}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"UnitXEcoregionUsfs"

#' Relationships of 2007 USDA Forest Service ecoregions to NVC categories
#'
#' Unclear of the provenance of this data; may be a multi-way \code{JOIN}.
#'
#' @format A data.frame with 10484 rows and 3 columns
#' \describe{
#' \item{\code{ELEMENT_GLOBAL_ID}}{The unique identifier of the NVC category}
#' \item{\code{USFS_ECOREGION_2007_ID}}{Numeric code for 2007 USFS ecoregion}
#' \item{\code{D_OCCURRENCE_STATUS_ID}}{Numeric code for occurrence status}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"UnitXEcoregionUsfs2007"

#' Relationships of references to NVC categories
#'
#' @format A data.frame with 77150 rows and 2 columns
#' \describe{
#' \item{\code{ELEMENT_GLOBAL_ID}}{The unique identifier of the NVC category}
#' \item{\code{REFERENCE_ID}}{Numeric code for reference}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"UnitXReference"

#' Relationships among NVC categories (similarities)
#'
#' Unclear how this table was derived.
#'
#' @format A data.frame with 11739 rows and 2 columns
#' \describe{
#' \item{\code{ELEMENT_GLOBAL_ID}}{The unique identifier of the NVC category}
#' \item{\code{SIMGLOBAL_ID}}{The unique identifier of the similar NVC category}
#' }
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"UnitXSimilarUnit"

#' Relationships of subnation IDs to NVC categories
#'
#' @format A data.frame with 32934 rows and 4 columns
#' \describe{
#' \item{\code{ELEMENT_GLOBAL_ID}}{The unique identifier of the NVC category}
#' \item{\code{SUBNATION_ID}}{The unique identifier of the subnation entity}
#' \item{\code{D_CURR_PRESENCE_ABSENCE_ID}}{Code for presence/absence}
#' \item{\code{D_DIST_CONFIDENCE_ID}}{Numeric code for distribution confidence}
#' }
#' @seealso \link{d_dist_confidence} \link{d_curr_presence_absence}
#' @source https://www1.usgs.gov/csas/nvcs_data/USNVCFullDownload.zip
"UnitXSimilarUnit"

