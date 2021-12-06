#' @title 
#' Calculates Accuracy
#'
#' @description 
#' Calculates the accuracy of a given test/prediction against a gold standard/ground truth. 
#' 
#' @details
#' Uses getCounts to obtain values for the 2x2 table
#' predictions and ground truths can either be boolean or 1 and 0, must be same length
#' 
#' @param pred vector of 1/0 or True and False representing predictions
#' @param truth vector of 1/0 or True and False representing gold standards or ground truths
#' @return  Accuracy, computed as (true pos + true neg) / (all pos + all neg) 
#' 
#' @examples
#' pred <- c(1,1,0,1,1,0,0)
#' truth < c(1,0,0,1,1,0,1)
#' accuracy(pred,truth)
#' 
adjR2 <- function(data, predict, d) { 
  #takes a vector of data, a vector of predictions, and the number of parameters d. Returns adjusted R2
  n <- length(data)
  RSS <- sum((predict-data)**2) #sum of squared difference between y and y_hat
  TSS <- sum((data - mean(data))**2) #sum of squared difference between y and mean(y)
  RSS <- RSS/(n-d-1) #this is the adjustment part, RSS is divided by d
  TSS <- TSS/(n-1)
  1-(RSS/TSS)
}