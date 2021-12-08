#' @title
#' Accuracy
#'
#' @description
#' Computes the accuracy of a given test/prediction against a gold standard/ground truth.
#'
#' @details
#' Takes in vectors representing a prediction and a ground truth.
#' Vectors may be either logical using T/F or numeric using 1 and 0s.
#' Vectors must be of the same length
#'
#' @param pred vector of 1s and 0s or True and False representing predictions
#' @param truth vector of 1s and 0s or True and False representing gold standards or ground truths
#'
#' @return  Accuracy, computed as (true pos + true neg) / (all pos + all neg)
#'
#' @examples
#' pred1 <- c(1,1,0,1,1,0,0)
#' truth1 < c(1,0,0,1,1,0,1)
#' accuracy(pred1,truth1)
#'
#' pred2 <- c(T,T,F,T,T,F,F)
#' truth2 <- c(T,F,F,T,T,F,T)
#' accuracy(pred2, truth2)

accuracy <- function(pred, truth){
  pred <- as.logical(pred)
  truth <- as.logical(truth)
  num_true_pos <- length(which(pred&truth))
  num_true_neg <- length(which(!pred&!truth))
  num_false_pos <- length(which(pred&!truth))
  num_false_neg <- length(which(!pred&truth))
  counts <- c(num_true_pos,num_true_neg,num_false_pos,num_false_neg)
  #Accuracy = (true pos + true neg )/ (#all pos + #all neg)
  (counts[1] + counts[2]) / (counts[1]+counts[2]+counts[3]+counts[4])
}
