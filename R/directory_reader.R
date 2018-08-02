
#' Directory reader csv2 files
#'
#' This function returns a single dataframe based on the identical csv files in the designated folder.
#'
#' @param folder The path to the folder containing csv files.
#'
#' @importFrom utils read.csv2
#'
#' @return a single dataframe
#' @export
#'
#' @examples
directory_reader_csv2 <- function(folder) {
  filenames <- list.files(path = folder, pattern = ".csv")
  filepaths <- paste(folder, filenames, sep = "/")
  files <- lapply(filepaths, FUN = read.csv2)
  dplyr::bind_rows(files)
}
