context("test-directory_reader_csv2.R")

test_that("directory_reader_csv2 works", {
  # These dataframes default csv2 files in the data-raw folder
  df1 <- data.frame(a = 1:10, b = 10:1)
  df2 <- data.frame(a = 11:20, b = 20:11)
  df12 <- dplyr::bind_rows(df1, df2)
  df3 <- directory_reader_csv2("testdata")

  expect_equal(df12, df3)

})
