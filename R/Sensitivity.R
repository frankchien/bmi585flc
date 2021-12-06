GetCounts <- function(pred, truth){
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

Sensitivity <- function(pred, truth){ #takes either logical vectors or 1 and 0s
  counts <- GetCounts(pred,truth)
  #sensitivity = true pos / (true pos + false neg)
  counts[1] / (counts[1] + counts[4]) #see comments for get counts for indices