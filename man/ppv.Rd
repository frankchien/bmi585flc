% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ppv.R
\name{ppv}
\alias{ppv}
\title{Positive Predictive Value}
\usage{
ppv(pred, truth)
}
\arguments{
\item{pred}{vector of 1s and 0s or True and False representing predictions}

\item{truth}{vector of 1s and 0s or True and False representing gold standards or ground truths}
}
\value{
Positive predictive value (PPV) computed as True Pos / (True Pos + False Pos)
}
\description{
Computes the Positive Predictive Value (PPV) of a given test/prediction against a gold standard/ground truth.
}
\details{
Takes in vectors representing a prediction and a ground truth.
Vectors may be either logical using T/F or numeric using 1 and 0s.
Vectors must be of the same length
}
\examples{
pred1 <- c(1,1,0,1,1,0,0)
truth1 < c(1,0,0,1,1,0,1)
ppv(pred1,truth1)

pred2 <- c(T,T,F,T,T,F,F)
truth2 <- c(T,F,F,T,T,F,T)
ppv(pred2, truth2)
}
