% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sszAirDatepickerInput.R
\name{sszAirDatepickerInput}
\alias{sszAirDatepickerInput}
\title{sszAirDatepickerInput}
\usage{
sszAirDatepickerInput(
  inputId,
  label,
  dateFormat = "dd.mm.yyyy",
  language = "de",
  ssz_icon = NULL,
  ...
)
}
\arguments{
\item{inputId}{inputId parameter for airDatepickerInput}

\item{label}{label parameter for airDatePickerInput}

\item{dateFormat}{optional format parameter for airDatepickerInput, default "dd.mm.yyyy"}

\item{language}{optional language parameter for airDatepickerInput, default "de"}

\item{ssz_icon}{optional parameter to be used as the calendar icon, a html image tag, e.g. htmltools::tags$img(...)}

\item{...}{further named parameters for airDatepickerInput}
}
\value{
the same as dateRangeInput return, with modified label class
}
\description{
sszAirDatepickerInput
}
\examples{
\dontrun{
inst / examples / sszAirDatepickerInput / app.r
}
}
\seealso{
Other shiny_widgets: 
\code{\link{sszActionButton}()},
\code{\link{sszAutocompleteInput}()},
\code{\link{sszDateRange}()},
\code{\link{sszDownloadButton}()},
\code{\link{sszNumericInput}()},
\code{\link{sszOgdDownload}()},
\code{\link{sszRadioButtons}()},
\code{\link{sszRadioGroupButtons}()},
\code{\link{sszSelectInput}()},
\code{\link{sszSliderInput}()},
\code{\link{sszTextInput}()}
}
\concept{shiny_widgets}
