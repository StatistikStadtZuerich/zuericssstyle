# zuericssstyle 2.0.3

-   Fix: adjust reactable font size to 14px to avoid font-hinting artifacts
-   Fix: set paragraph font size to 16px at tablet breakpoint
-   Fix: adjust font size in ordered and unordered lists
-   New `icons_stzh` function that provides icons supported by the corporate design of the City of Zurich

# zuericssstyle 2.0.2

-   reactable behaviour made configurable via CSS classes — added `.ssz-striped` (even-row stripes; hover visuals disabled) and `.ssz-hover` (no stripes; hover highlights)
-   icons shipped as package assets and included automatically
-   responsive layout for grouped download buttons — stacked, full-width and centered on small screens

# zuericssstyle 2.0.1

-   Minor styling changes for `sszInfoBox`, `sszAutocompleteInput`, `bslib` cards and headings

# zuericssstyle 2.0.0

-   Complete redesign of all previously used Shiny widgets
-   Full rewrite of the SCSS/CSS to align with the corporate design of the City of Zurich
-   Some previous widget arguments or layouts may have changed; check the updated README examples
-   New `sszContextBox`, `sszInfoBox`, and `sszWarningBox` functions for contextual, informational, and warning messages

# zuericssstyle 1.1.1

-   new: css classes for tooltip styling and chart-button div
-   fix dependency declaration for icons package

# zuericssstyle 1.1.0

-   new: minimal styling for `bslib` cards

# zuericssstyle 1.0.0

-   no functional changes
-   improve pkgdown site
-   add GitHub and GitLab badges
-   everything ready for publication on [swissstatsr](https://swissstatsr.org/)

# zuericssstyle 0.2.3

-   no functional changes
-   create pkgdown site
-   update packages
-   various minor changes re. documentation and package development

# zuericssstyle 0.2.2

-   no functional changes!
-   update packages
-   add GitLab Pipeline for automatic code publication to GitLab

# zuericssstyle 0.2.1

-   new function `sszRadioGroupButtons`, generating styled `shinyWidgets::radioGroupButtons`

# zuericssstyle 0.2.0

-   major refactoring of the css into separate scss files, which can then be compiled into larger css files
-   use these new css files for the styling
-   remove the `get_shiny_css` function, as for shiny, `ssz_page` or `add_zcss_deps` should be used

# zuericssstyle 0.1.0

-   add `ssz_page` and `add_zcss_deps` functions; the first to directly create a fluid page with SSZ styling, the latter to add the styling to any other kind of html/ui
-   create examples for all widgets under inst/examples
-   remove `sszActionButtonIcon`, as we did not use an action button with an icon and it anyway did not work properly
