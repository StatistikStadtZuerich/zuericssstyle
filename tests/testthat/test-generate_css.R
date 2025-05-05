test_that("css files can be generated based on scss", {
  # file writing not work in the pipeline on all os - skip if run in pipeline/action
  skip_on_ci()

  # shiny css
  temp_file <- file.path(Sys.getenv("TEMP"), "temp.css")
  expect_no_error(
    # css for shiny apps including all widgets
    sass::sass(
      sass::sass_file(here("scss", "main_shiny.scss")),
      temp_file,
      options = sass::sass_options(
        output_style = "compressed",
        source_map_embed = TRUE
      )
    )
  )
  expect_true(file.exists(temp_file))
  expect_true(file.remove(temp_file))

  # general css
  temp_file <- file.path(Sys.getenv("TEMP"), "temp.css")
  expect_no_error(
    # css for shiny apps including all widgets
    sass::sass(
      sass::sass_file(here("scss", "main.scss")),
      temp_file,
      options = sass::sass_options(
        source_map_embed = TRUE
      )
    )
  )
  expect_true(file.exists(temp_file))
  expect_true(file.remove(temp_file))
})
