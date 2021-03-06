% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lima.R
\name{lima}
\alias{lima}
\title{Candidates' ordering according to Lima's algorithm 'USING data.table'}
\usage{
lima(
  iso = TRUE,
  dABO = "O",
  dA = c("1", "2"),
  dB = c("15", "44"),
  dDR = c("1", "4"),
  donor.age = 60,
  df.abs = cabs,
  data = candidates,
  n = 2,
  q2 = 60,
  q3 = 100,
  cPRA1 = 50,
  cPRA2 = 85,
  check.validity = TRUE
)
}
\arguments{
\item{iso}{A logical value for isogroupal compatibility.}

\item{dABO}{A character value with ABO blood group (\code{env$valid.blood.groups}).}

\item{dA}{donor's HLA-A typing.}

\item{dB}{donor's HLA-B typing.}

\item{dDR}{donor's HLA-DR typing.}

\item{donor.age}{A numeric value with donor's age.}

\item{df.abs}{A data frame with candidates' antibodies.}

\item{data}{A data frame containing demographics and medical information
for a group of waitlisted transplant candidates with
color priority classification.}

\item{n}{A positive integer to slice the first candidates.}

\item{q2}{A numerical value for the median of candidates' waiting list (\code{env$q.minimum} - \code{env$q.maximum}).}

\item{q3}{A numerical value for the third quartile of candidates' waiting list (\code{env$q.minimum} - \code{env$q.maximum}).}

\item{cPRA1}{A numerical value (\code{env$percentage.minimum} - \code{env$percentage.maximum}) for the lower cPRA cutoff.}

\item{cPRA2}{A numerical value (\code{env$percentage.minimum} - \code{env$percentage.maximum}) for the higher cPRA cutoff.}

\item{check.validity}{Logical to decide whether to validate input.}
}
\value{
An ordered data frame with a column 'cp' (color priority),
'sp', 'hi' and 'mmHLA'.
}
\description{
Ordering of waitlisted candidates for a given donor and
according to to Lima's algorithm.
}
\examples{
lima(iso = TRUE, dABO = "O",
dA = c("1","2"), dB = c("15","44"), dDR = c("1","4"),
donor.age = 60, df.abs = cabs,
data = candidates, n = 2, check.validity = TRUE)
}
