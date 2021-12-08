#' @title
#' R2
#'
#' @description
#' Computes the R2 value
#'
#' @details
#' Uses 2 numeric vectors pred and truth to compute an R2 value
#'
#' @param pred a numeric vector of predicted/fitted values
#' @param truth a numeric vector of true/observed values
#' @return  r2-value
#'
#' @examples
#' #using the ISLR::Credit database for this example
#' truth <- ISLR::Credit$Limit
#' reg_model <- lm(ISLR::Credit$Limit~ISLR::Credit$Income)
#' pred <- reg_model$fitted.values
#' r2(pred, truth)

r2 <- function(pred, truth){ #takes a vector of y and vector of y_hat to return a R2 value
  RSS <- sum((pred-truth)**2) #sum of squared difference between y and y_hat
  TSS <- sum((pred - mean(pred))**2) #sum of squared difference between y and mean(y)
  1-(RSS/TSS)
}
