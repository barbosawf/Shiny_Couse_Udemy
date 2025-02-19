# Packages ----------------------------------------------------------------

library(purrr)
library(stringr)


# Zip files ---------------------------------------------------------------


zip <- list.files(pattern = ".zip")


zip |>
  str_remove(".zip") ->
  file_dirs


zip |>
  set_names(file_dirs) ->
  zip




# Checking folders within zip files ---------------------------------------


zip |>
  map(\(x, ix) {


    old_dir <- dirname(unzip(x, list = TRUE)$Name)


  })



# Unzipping ---------------------------------------------------------------



zip |>
  iwalk(\(x, ix) {


    unzip(x)


    old_dir <- dirname(unzip(x, list = TRUE)$Name)[[1]]


    file.rename(old_dir, ix)


    file.remove(x)

  })



