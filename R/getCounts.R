#' Get Counts for 2x2 Table
#'
#' Support function that takes a set of predictions and set of ground truths
#' predictions and ground truths can either be boolean or 1 and 0, must be same length
#' Returns numbers of True Positive, True Negatives, False Positives, and False Negatives in that order in a number vector of size 4
#'
#' @param pred vector of 1/0 or True and False representing predictions
#' @param truth vector of 1/0 or True and False representing gold standards or ground truths
#' @return  the sensitivity given as true pos/(true pos + false neg)

getCounts <- function(pred, truth){
  #support function that takes vector of predictions and ground truths
  #allows for either 1 & 0 or T/F vectors
  #no matter how its passed, we will be using the booleans
  pred <- as.logical(pred)
  truth <- as.logical(truth)
  num_true_pos <- length(which(pred&truth))
  num_true_neg <- length(which(!pred&!truth))
  num_false_pos <- length(which(pred&!truth))
  num_false_neg <- length(which(!pred&truth))
  #returns a vector of 4 digits: num TP, num TN, num FP, num FN
  return(c(num_true_pos,num_true_neg,num_false_pos,num_false_neg))
}
