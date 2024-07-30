library(sass)
sass(
  sass_file("scss/main.scss"),
  "inst/css/main.min.css",
  options = sass_options(
    output_style = "compressed",
    source_map_embed = TRUE
  )
)
