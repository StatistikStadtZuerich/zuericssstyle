library(sass)
# css for shiny apps including all widgets
sass(
  sass_file("scss/main_shiny.scss"),
  "inst/css/ssz_shiny.min.css",
  options = sass_options(
    output_style = "compressed",
    source_map_embed = TRUE
  )
)

# css for html without any widgets
sass(
  sass_file("scss/main.scss"),
  "inst/css/ssz.css",
  options = sass_options(
    # output_style = "compressed",
    source_map_embed = TRUE
  )
)
