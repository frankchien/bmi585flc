#' @title
#' Post-Hoc Power
#'
#' @description
#' Given an effect size d and two sample sizes n1 and n2, estimates Post-Hoc Power
#'
#' @details
#' Uses Monte Carlo simulation approach to run 1000 t-tests against 2 generated samples of size n1 and n2 respectively.
#' The mean of the second normal distribution is centered at d to allow for the given effect size
#'
#' @param d effect size
#' @param n1 number of observations in first group
#' @param n2 number of observations in second group
#' @return post hoc power estimate
#'
#' @examples
#' postHocPower(1,12,12)
#'

postHocPower <- function(d,n1,n2){
  #runs 1000 t-tests and estimates power
  p.values <- replicate(1000, t.test(rnorm(n1,mean=0),rnorm(n2,mean=d))$p.value)
  num_significant <- length(which(p.values <= 0.05))
  power_estimate <- num_significant/length(p.values)
  power_estimate
}


