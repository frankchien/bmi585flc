#' @title
#' Specificity
#'
#' @description
#' Computes the specificity of a given test/prediction against a gold standard/ground truth.
#'
#' @details
#' Takes in vectors representing a prediction and a ground truth.
#' Vectors may be either logical using T/F or numeric using 1 and 0s.
#' Vectors must be of the same length
#'
#' @param pred vector of 1s and 0s or True and False representing predictions
#' @param truth vector of 1s and 0s or True and False representing gold standards or ground truths
#'
#' @return  Specificity, computed as true neg / (true neg + false pos)
#'
#' @examples
#' pred1 <- c(1,1,0,1,1,0,0)
#' truth1 < c(1,0,0,1,1,0,1)
#' specificity(pred1,truth1)
#'
#' pred2 <- c(T,T,F,T,T,F,F)
#' truth2 <- c(T,F,F,T,T,F,T)
#' specificity(pred2, truth2)

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
