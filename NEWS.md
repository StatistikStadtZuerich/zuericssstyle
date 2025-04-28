# zuericssstyle 1.0.0

* no functional changes
* improve pkgdown site
* add GitHub and GitLab badges
* everything ready for publication on [swissstatsr](https://swissstatsr.org/)

# zuericssstyle 0.2.3

* no functional changes
* create pkgdown site
* update packages
* various minor changes re. documentation and package development

# zuericssstyle 0.2.2

* no functional changes!
* update packages 
* add GitLab Pipeline for automatic code publication to GitLab

# zuericssstyle 0.2.1

* new function `sszRadioGroupButtons`, generating styled `shinyWidgets::radioGroupButtons`

# zuericssstyle 0.2.0

* major refactoring of the css into separate scss files, which can then be compiled into larger css files
* use these new css files for the styling
* remove the `get_shiny_css` function, as for shiny, `ssz_page` or `add_zcss_deps` should be used

# zuericssstyle 0.1.0

* add `ssz_page` and `add_zcss_deps` functions; the first to directly create a fluid page with ssz styling, the latter to add the styling to any other kind of html/ui
* create examples for all widgets under inst/examples
* remove `sszActionButtonIcon`, as we did not use an action button with an icon and it anyway did not work properly
