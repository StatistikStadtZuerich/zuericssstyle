% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssz_ui_utils.R
\name{sszRadioButtons}
\alias{sszRadioButtons}
\title{sszRadioButtons}
\usage{
sszRadioButtons(inputId, label, choices, ...)
}
\arguments{
\item{inputId}{inputId parameter for radioButtons}

\item{label}{label parameter for radioButtons}

\item{choices}{choices parameter for radioButtons}

\item{...}{further named parameters for radioBuTons (e.g. inline = TRUE for horizontal layout)}
}
\value{
the return of radioButtons with modified labels, wrapped in a div with class "radioDiv"
}
\description{
function to generate radioButtons with the custom ssz (label) styling
}
\details{
a "sszRadioButton" is added to the output of radioButtons, and a
"sszRadioButton-label" class is added to the appropriate child. the whole thing is
wrapped in a div with class "radioDiv"
}
\examples{
sszRadioButtons(
  inputId = "ButtonGroupLabel",
  label = "Flughafen:",
  choices = c("HOU", "LAX", "JFK", "SEA"),
  selected = "JFK" # default value
)
}
