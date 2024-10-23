test_that("check ssz_page is a fluidPage and has zcss dependencies", {
  my_page <- ssz_page(tags$div())

  # expect this being a tag list
  expect_s3_class(my_page, "shiny.tag.list")

  # check it is a container-fluid
  expect_true(htmltools::tagQuery(my_page)$hasClass("container-fluid"))

  # check dependencies
  expect_equal(my_page[[2]]$package, "zuericssstyle")

  expect_contains(my_page[[2]]$stylesheet, c("ssz_shiny.min.css"))
})
