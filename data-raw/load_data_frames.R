# BSD_2_clause

test_enc <- function(x) {
  cmd <- paste0("file -I ", x)
  res <- system(cmd, intern = TRUE)
  res_spl <- stringr::str_split(res, "=")
  return(res_spl[[1]][2])
}

# There was some sort of encoding issue that broke the import initially for a
# couple of files, but this works:
tabs <- list.files("data-raw/", pattern = "txt")
for(i in tabs) {
  fil <- paste0("data-raw/", i)
  enc <- test_enc(fil)
  cur_df <- stringr::str_replace(i, pattern = ".txt", replacement = "")
  sav <- paste0("data/", cur_df, ".rda")
  dat <- readr::read_tsv(fil, locale = readr::locale(encoding = enc))
  if(dim(readr::problems(dat)) > 0) {
    dat <- read.csv(fil, sep = "\t", stringsAsFactors = FALSE, quote = "")
    dat <- tibble::as_tibble(dat)
  }
  assign(cur_df, dat, env = .GlobalEnv)
}

lapply(ls(), FUN = function(x) {
  save(list = x, file = paste0("data/", x, ".rda")) }
)

# USGS GAP data descriptions
CONUS <- readxl::read_excel("data-raw/Descriptions_ESLU.xlsx", sheet = "CONUS")
dim(CONUS)
CONUS <- CONUS[, 1:8]
names(CONUS) <- c("Area", "Area_Name", "Grid_Value",
                  "Comb_Value", "NVCMES", "EVT_Value",
                  "Class_Name", "Description")

AK <- readxl::read_excel("data-raw/Descriptions_ESLU.xlsx", sheet = "Alaska")
dim(AK)
names(AK) <- c("Area", "Area_Name", "Grid_Value",
               "Comb_Value", "NVCMES", "EVT_Value",
               "Class_Name", "Description")

HI <- readxl::read_excel("data-raw/Descriptions_ESLU.xlsx", sheet = "Hawaii")
dim(HI)
HI$EVT_Value <- rep(NA, length(HI[[1]]))
HI <- HI[, c(1:5, 8, 6:7)]
names(HI) <- c("Area", "Area_Name", "Grid_Value",
               "Comb_Value", "NVCMES", "EVT_Value",
               "Class_Name", "Description")


GAP_df <- rbind(CONUS, AK, HI)
dim(GAP_df)
names(GAP_df)

# readr::write_tsv(GAP_df, path = "data-raw/GAP_df.tsv")
# GAP_df <- readr::read_tsv("data-raw/GAP_df.tsv")

devtools::use_data(GAP_df, overwrite = TRUE)
