# BSD_2_clause

data("Unit")
data("UnitDescription")
data("d_classification_level")

# join 1
unit_data <- dplyr::full_join(Unit, UnitDescription, by = "ELEMENT_GLOBAL_ID")
dim(unit_data)
unit_data <- dplyr::full_join(unit_data,
                              d_classification_level,
                              by = "D_CLASSIFICATION_LEVEL_ID")
dim(unit_data)

devtools::use_data(unit_data, overwrite = TRUE)
