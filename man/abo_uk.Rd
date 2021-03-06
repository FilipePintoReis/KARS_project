% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uk.R
\name{abo_uk}
\alias{abo_uk}
\title{test for ABO compatibility on UK transplant}
\usage{
abo_uk(dABO = "A", cABO = "A", tier = "B")
}
\arguments{
\item{dABO}{A character from (\code{env$valid.blood.groups}), for donor ABO group}

\item{cABO}{A character from (\code{env$valid.blood.groups}), for candidate ABO group}

\item{tier}{A character value for UK transplant candidate's TIER classification (\code{env$valid.tiers})
(options A and B)}
}
\value{
A logical value T/F
}
\description{
ABO compatibility test between donor and candidate according to
TIER classification
}
\examples{
abo_uk(dABO = "A", cABO = "A", tier = "B")
}
