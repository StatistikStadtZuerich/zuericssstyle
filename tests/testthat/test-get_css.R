test_that("get_generic_css writes a file", {
  temp_file <- file.path("temp.css")

  get_generic_css(temp_file)
  fi <- file.info(temp_file)

  # file size not NA means file is present
  expect_equal((!is.na(fi$size) && fi$size > 0), TRUE)

  # modified time should not differ from system time (within reasonable limit of 1 minute)
  expect_equal((Sys.time() - fi$mtime < 1), TRUE)

  # remove the file for cleanup; ensures at the same time proper accessibility handling
  expect_equal(file.remove(temp_file), TRUE)
})
