#' @title
#' Adjusted R2
#'
#' @description
#' Computes the adjusted R2 value
#'
#' @details
#' Uses 2 numeric vectors pred and truth to compute an adjusted R2 value, adjusted by number of parameters
#'
#' @param pred a numeric vector of predicted/fitted values
#' @param truth a numeric vector of true/observed values
#' @param d number of prediction variables used
#' @return  adjusted r2-value
#'
#' @examples
#' #using the ISLR::Credit database for this example
#' truth <- ISLR::Credit$Limit
#' reg_model <- lm(ISLR::Credit$Limit~ISLR::Credit$Income + ISLR::Credit$Cards)
#' pred <- reg_model$fitted.values
#' adjR2(pred, truth, 2)
#'

adjR2 <- function(pred, truth, d) {
  #takes a vector of data, a vector of predictions, and the number of parameters d. Returns adjusted R2
  n <- length(pred)
  RSS <- sum((truth-pred)**2) #sum of squared difference between y and y_hat
  TSS <- sum((pred - mean(pred))**2) #sum of squared difference between y and mean(y)
  RSS <- RSS/(n-d-1) #this is the adjustment part, RSS is divided by d
  TSS <- TSS/(n-1)
  1-(RSS/TSS)
}

