#' @title
#' Minimum N
#'
#' @description
#' Computes the minimum number of samples n per group to resolve a specified effect size d with 80% power
#'
#' @details
#' uses power.t.test to compute minimum sample sizes n. Passes 0.8 to power.t.test to compute sample size for 80% power
#' Assumes discrete number of observations, and so the ceiling of the output is returned.
#'
#' @param d a desired effect size / Cohen's D
#' @return  minimum number of samples needed to resolve effect size d rounded up to nearest whole number
#'
#' @examples
#' minimumN(10)

minimumN <- function(d){
  #takes effect size, return minimum per group
  power<-power.t.test(power=0.8, delta=d)
  return(ceiling(power$n)) #since were getting a sample size, we will round up using ceiling
  #eg you can't have a sample of 1.5, will round up to 2 to ensure specified power is achieved
}

