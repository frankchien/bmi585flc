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
#' @example
#' pred <- c(1,1,0,1,1,0,0)
#' truth < c(1,0,0,1,1,0,1)
#' accuracy(pred,truth)
#' 

chiSquareCounts <- function(data, v1, v2){
  #takes a data set and 2 named variables to count chi2
  count_table<-with(data, table(sex, group))
  chisq.test(count_table)
}