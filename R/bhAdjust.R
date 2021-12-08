#' @title
#' Bonferroni Adjustment
#'
#' @description
#' Tests for significance using Bonferroni adjustment for multiple hypothesis testing
#'
#' @details
#' Tests to see if p-values remain significant at p < 0.05 using bonferroni adjustment for multiple-hypothesis testing
#'
#' @param p a numeric vector of p values
#' @return logical vector, true if p values remain significant after bonferroni correction
#'
#' @examples
#' p <- c(0.0025, 0.0050, 0.0075, 0.0100, 0.0125, 0.0150, 0.0175, 0.0200, 0.0225, 0.0250)
#' bhAdjust(p)


bhAdjust <- function(p){
  p < 0.05/length(p)
}

