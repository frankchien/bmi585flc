#' @title 
#' Calculates Box Muller
#'
#' @description 
#' takes an N and does box muller 
#' 
#' @details
#' to write later
#' 
#' @param n number of observations
#' @return  stuff 
#' 
#' @example
#' boxMuller(500)

boxMuller <- function(n){
  u1 <- runif(n/2)
  u2 <- runif(n/2)
  x1 <- sqrt(-2*log(u1)) * (cos(2*pi*u2))
  x2 <- sqrt(-2*log(u1)) * (sin(2*pi*u2))
  return(c(x1,x2))
}
