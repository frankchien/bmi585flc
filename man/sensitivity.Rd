% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sensitivities.R
\name{sensitivity}
\alias{sensitivity}
\title{Sensitivity}
\usage{
sensitivity(pred, truth)
}
\arguments{
\item{pred}{vector of 1s and 0s or True and False representing predictions}

\item{truth}{vector of 1s and 0s or True and False representing gold standards or ground truths}
}
\value{
sensitivity given as true pos/(true pos + false neg)
}
\description{
Computes sensitivity given set of predictions and set of ground truths
}
\details{
Takes in vectors representing a prediction and a ground truth.
Vectors may be either logical using T/F or numeric using 1 and 0s.
Vectors must be of the same length
}
\examples{
pred1 <- c(1,1,0,1,1,0,0)
truth1 < c(1,0,0,1,1,0,1)
sensitivity(pred1,truth1)

pred2 <- c(T,T,F,T,T,F,F)
truth2 <- c(T,F,F,T,T,F,T)
sensitivity(pred2, truth2)
}
