% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssz_ui_utils.R
\name{sszActionButton}
\alias{sszActionButton}
\title{sszActionButton}
\usage{
sszActionButton(inputId, label, ...)
}
\arguments{
\item{inputId}{inputId parameter for actionButton}

\item{label}{label parameter for actionButton}

\item{...}{further parameters for actionButton}
}
\value{
the return of actionButton with "sszActionButton" added as a class
}
\description{
function to generate an action button with the custom ssz styling
}
\examples{
sszActionButton("ActionButtonId", "Abfrage starten")
}
