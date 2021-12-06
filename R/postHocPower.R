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
#' @examples
#' pred <- c(1,1,0,1,1,0,0)
#' truth < c(1,0,0,1,1,0,1)
#' accuracy(pred,truth)
#' 

t_tests <- function(n, delta){ #takes n per group and a delta, returns a p value
  sample1 <- rnorm(n,mean=0)
  sample2 <- rnorm(n,mean=delta)
  round(t.test(sample1,sample2)$p.value,4)
}

postHocPower <- function(n_per_group,cohens_d){
  #runs 1000 t-tests and estimates power
  p.values <- replicate(1000,t_tests(n_per_group,cohens_d))
  num_significant <- length(which(p.values <= 0.05)) 
  power_estimate <- num_significant/length(p.values)
}
#print(paste0("post hoc power estimate = ", postHocPower(12,1)))
