#' @title
#' Effect Size
#'
#' @description
#' Calculates the effect size / Cohen's D given a vector of data and a vector for grouping
#'
#' @details
#' Computes the effect size by dividing the sample difference by the standard deviation of the pooled sample.
#' The function takes a vector of observations and a vector of groups in the form of group1 == 1, group2 ==2.
#' Group 1 and 2 must of same size
#'
#' @param x a vector of doubles with the observations
#' @param g a vector of 1 or 0 indicating grouping.
#' @return Effect Size / Cohen's D
#'
#' @examples
#'
#' groups <- c(rep(1,times=50),rep(0,times=50))  \cr
#' modeled_tumor_size <- 4 -2*groups + rnorm(100)  \cr
#' effectSize(modeled_tumor_size, groups) \cr

#from homework 6
effectSize <- function(x,g){
  df <- data.frame(x=x,g=g)
  sample_mean_1 <- mean(df[which(g==1),]$x) #gets mean tumor sizes for g (group) == 1
  sample_mean_2 <- mean(df[which(g==0),]$x) #gets mean tumor sizes for g (group) == 0
  std <- sd(x) #std of tumor sizes in entire sample
  sample_difference <- abs(sample_mean_1 - sample_mean_2)
  cohens_d <- sample_difference/std
  return(cohens_d)
}



