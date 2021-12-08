#' @title
#' FDR (False Discovery Rate) Adjustment
#'
#' @description
#' Tests for significance using fdr adjustment for multiple hypothesis testing
#'
#' @details
#' Tests to see if p-values remain significant at p < 0.05 using fdr adjustment for multiple-hypothesis testing
#'
#' @param p a numeric vector of p values
#' @return logical vector, true if p values remain significant after bonferroni correction
#'
#' @examples
#' p <- c(0.0025, 0.0050, 0.0075, 0.0100, 0.0125, 0.0150, 0.0175, 0.0200, 0.0225, 0.0250)
#' fdrAdjust(p)


fdrAdjust <- function(p){
  k <- seq(1, length(p))
  p <- sort(p)
  p < (k/length(p)) * 0.05
}

