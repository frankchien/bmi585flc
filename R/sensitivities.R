#' Computers Sensitivities
#'
#' gets sensitivity given set of predictions and set of ground truths
#' predictions and ground truths can either be boolean or 1 and 0, must be same length
#'
#' @param pred vector of 1/0 or True and False representing predictions
#' @param truth vector of 1/0 or True and False representing gold standards or ground truths
#' @return  the sensitivity given as true pos/(true pos + false neg)
#' @examples
#' sensitivity(c(T,T,F,T), c(T,T,F,F))

sensitivity <- function(pred, truth){ #takes either logical vectors or 1 and 0s
  pred <- as.logical(pred)
  truth <- as.logical(truth)
  num_true_pos <- length(which(pred&truth))
  num_true_neg <- length(which(!pred&!truth))
  num_false_pos <- length(which(pred&!truth))
  num_false_neg <- length(which(!pred&truth))
  counts <- c(num_true_pos,num_true_neg,num_false_pos,num_false_neg)
  #sensitivity = true pos / (true pos + false neg)
  counts[1] / (counts[1] + counts[4]) #see comments for get counts for indices
}
