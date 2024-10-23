test_that("check html dependency is added", {
  some_ui <- add_zcss_deps(tags$div())
  # the html dependency is added as the second item in a tag list, so check the second item of the return value

  expect_equal(some_ui[[2]]$package, "zuericssstyle")

  expect_contains(some_ui[[2]]$stylesheet, c("ssz_shiny.min.css"))

  expect_s3_class(some_ui, "shiny.tag.list")
})
