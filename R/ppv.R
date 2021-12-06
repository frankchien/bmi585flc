#' @title 
#' Calculates Positive Predictive Value
#'
#' @description 
#' Calculates the Positive Predictive Value (PPV) of a given test/prediction against a gold standard/ground truth. 
#' 
#' @details
#' Calculates the specificity of a given test/prediction against a gold standard/ground truth. Predictions and ground truths can either be boolean or 1 and 0, must be same length
#' 
#' @param pred vector of 1/0 or True and False representing predictions
#' @param truth vector of 1/0 or True and False representing gold standards or ground truths
#' @return  Positive predicitive value (PPV) 
#' 
#' @example
#' pred <- c(1,1,0,1,1,0,0)
#' truth < c(1,0,0,1,1,0,1)
#' ppv(pred,truth)

ppv <- function(pred, truth){
  pred <- as.logical(pred)
  truth <- as.logical(truth)
  num_true_pos <- length(which(pred&truth)) 
  num_true_neg <- length(which(!pred&!truth))
  num_false_pos <- length(which(pred&!truth))
  num_false_neg <- length(which(!pred&truth))
  counts <- c(num_true_pos,num_true_neg,num_false_pos,num_false_neg)
  #PPV = True Pos / (True Pos + #False Pos)
  counts[1] / (counts[1]+counts[3])
}