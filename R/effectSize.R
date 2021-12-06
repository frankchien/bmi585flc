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

effectSize <- function(t,g){
  df <- data.frame(t=t,g=g)
  sample_mean_1 <- mean(df[which(g==1),]$t) #gets mean tumor sizes for g (group) == 1
  sample_mean_2 <- mean(df[which(g==0),]$t) #gets mean tumor sizes for g (group) == 0
  std <- sd(t) #std of tumor sizes in entire sample
  sample_difference <- abs(sample_mean_1 - sample_mean_2)
  cohens_d <- sample_difference/std
  return(cohens_d)
}