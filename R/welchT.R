#' @title
#' Welch T-Test
#'
#' @description
#' Computes a manual Welch T-test given two sample vectors
#'
#' @details
#' Takes two numeric vectors x, y representing two samples. 
#' Computes a manual Welch T-test statistic and effective degrees of freedom
#'
#' @param x numeric vector representing sample 1
#' @param y numeric vector representing sample 2
#' @return 2 named variables: t-statistic, effective degree of freedom
#'
#' @examples
#' #using an example from class with data by Dr. McKay:
#' bp_df <- read.csv("https://jlucasmckay.bmi.emory.edu/global/bmi585/two_group_bp.csv")
#' group_a <- bp_df$bp[which(bp_df$group=='A')]
#' group_b <- bp_df$bp[which(bp_df$group=='B')]
#' welchT(group_a,group_b)

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
  setNames(c(t,dof), c("t-statistic", "estimated DoF"))
}