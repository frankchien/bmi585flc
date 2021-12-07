#' @title 
#' Unscale
#'
#' @description 
#' Given a scaled numerical object, unscales back to original
#' 
#' @details
#' Uses attributes of a scaled object to return it back to the original
#' 
#' @param x a numerical function that has been scaled (with scale())
#' @return  unscaled values for x
#' 
#' @examples
#' x <- matrix(1:10)
#' scaled_x <- scale(x)
#' unscale(scaled_x)
#' 
#' x2 <- matrix(1:10, ncol=5)
#' scaled_x2 <- scale(x2)
#' unscale(scaled_x2)

unscale <- function(x){
  unscaled <- t(x) * attr(x, "scaled:scale") + attr(x, "scaled:center")
  t(unscaled)
}