#' @title
#' Computes Box Muller Transformation
#'
#' @description
#' takes a desired value for n and returns n samples from the standard normal distribution using Box Muller Transformation
#'
#' @details
#' computes n samples using the Box Muller transformation to estimate samples from a normal distribution. Uses the following two formulas:
#' \eqn{x1 = sqrt(-2*log(u1)) * (cos(2*pi*u2))}
#' \eqn{x2 = sqrt(-2*log(u1)) * (sin(2*pi*u2))}
#'
#' @param n number of sample estimates from the normal distribution
#' @return a vector of doubles of size n sampled from the normal standard distribution N(0,1)
#'
#' @examples
#' normal_estimate <- boxMuller(500)
#' #verify that mu and std is approximately 0 and 1
#' mean(normal_estimate)
#' sd(normal_estimate)

#from Exercise 4, Question 5
#Guangji comment - mean and sample variance printed in samples
boxMuller <- function(n){
  u1 <- runif(n/2)
  u2 <- runif(n/2)
  x1 <- sqrt(-2*log(u1)) * (cos(2*pi*u2))
  x2 <- sqrt(-2*log(u1)) * (sin(2*pi*u2))
  return(c(x1,x2))
}
