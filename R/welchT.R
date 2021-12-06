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
#' 

welchT <- function(x,y){ #takes a sample x, separte sample y, returns a manually calculated t + dof in form of a vector (t, dof)
  t <- (mean(x) - mean(y)) / sqrt ( (sd(x)**2)/length(x) + sd(y)**2/length(y) )
  #the equation for effective degree of freedom is very complex, and so will be split into 3 variables in form of A/(B+C)
  s1 <- sd(x)
  s2 <- sd(y)
  n1 <- length(x)
  n2 <- length(y)
  A <- (s1**2 / n1 + s2**2/ n2)**2
  B <- ((s1**2/n1)**2) * (1/(n1-1))
  C <- ((s2**2/n2)**2) * (1/(n2-1))
  dof <- A / (B+C)
  return(c(t, dof))
}