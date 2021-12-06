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

twoSidedT = function(t,df){ #returns the 2 sided area under density >= abs(t) with df degrees of freedom
  t<-abs(t) 
  2*(1-pt(t,df)) #pt gives area left
}