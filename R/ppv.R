#' @title
#' Positive Predictive Value
#'
#' @description
#' Computes the Positive Predictive Value (PPV) of a given test/prediction against a gold standard/ground truth.
#'
#' @details
#' Takes in vectors representing a prediction and a ground truth.
#' Vectors may be either logical using T/F or numeric using 1 and 0s.
#' Vectors must be of the same length
#'
#' @param pred vector of 1s and 0s or True and False representing predictions
#' @param truth vector of 1s and 0s or True and False representing gold standards or ground truths
#'
#' @return  Positive predictive value (PPV) computed as True Pos / (True Pos + False Pos)
#'
#' @examples
#' pred1 <- c(1,1,0,1,1,0,0)
#' truth1 < c(1,0,0,1,1,0,1)
#' ppv(pred1,truth1)
#'
#' pred2 <- c(T,T,F,T,T,F,F)
#' truth2 <- c(T,F,F,T,T,F,T)
#' ppv(pred2, truth2)

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
