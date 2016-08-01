# BSD_2_clause

# There was some sort of encoding issue that broke the import initially for a
# couple of files, but this works:
tabs <- list.files("data-raw/", pattern = "txt")
for(i in tabs) {
  fil <- paste0("data-raw/", i)
  cur_df <- stringr::str_replace(i, pattern = ".txt", replacement = "")
  sav <- paste0("data/", cur_df, ".rda")
  dat <- readr::read_tsv(fil)
  if(dim(readr::problems(dat)) > 0) {
    dat <- read.csv(fil, sep = "\t", stringsAsFactors = FALSE, quote = "")
    dat <- tibble::as_tibble(dat)
  }
  assign(cur_df, dat, env = .GlobalEnv)
}

lapply(ls(), FUN = function(x) {
  save(list = x, file = paste0("data/", x, ".rda")) }
)
