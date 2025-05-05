test_that("css files can be generated based on scss", {
  # these tests fail with devtools::check but succeed with devtools::test, the
  # reason being that the place of execution is different and the scc file can
  # not be accessed from devtools::check (?)
  # therefore skip if the scss file cannot be found
  skip_if_not(file.exists(here("scss", "main_shiny.scss")))

  # shiny css
  temp_file <- file.path(tempdir(), "temp.css")
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
  temp_file <- file.path(tempdir(), "temp.css")
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
