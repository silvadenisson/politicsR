## Code to prepare CLEA datasets


# Load data
load(url("https://github.com/meirelesff/Electoral-Datasets/raw/main/clea.Rda"))

# Store in 'data' folder
usethis::use_data(brazil, overwrite = TRUE)
usethis::use_data(denmark, overwrite = TRUE)
usethis::use_data(spain, overwrite = TRUE)
