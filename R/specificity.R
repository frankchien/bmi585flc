#' @title 
#' Calculates Specificity
#'
#' @description 
#' Calculates the specificity of a given test/prediction against a gold standard/ground truth. 
#' 
#' @details
#' Calculates the specificity of a given test/prediction against a gold standard/ground truth. Predictions and ground truths can either be boolean or 1 and 0, must be same length
#' 
#' @param pred vector of 1/0 or True and False representing predictions
#' @param truth vector of 1/0 or True and False representing gold standards or ground truths
#' @return  Specificity, computed as true neg / (true neg + false pos) 
#' 
#' @example
#' pred <- c(1,1,0,1,1,0,0)
#' truth < c(1,0,0,1,1,0,1)
#' specificity(pred,truth)

specificity <-function(pred, truth){
  pred <- as.logical(pred)
  truth <- as.logical(truth)
  num_true_pos <- length(which(pred&truth)) 
  num_true_neg <- length(which(!pred&!truth))
  num_false_pos <- length(which(pred&!truth))
  num_false_neg <- length(which(!pred&truth))
  counts <- c(num_true_pos,num_true_neg,num_false_pos,num_false_neg)
  #specificity = true neg / (true neg + false pos)
  counts[2] / (counts[2]+counts[3])
}