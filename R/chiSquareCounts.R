#' @title
#' Chi-Squared Counts
#'
#' @description
#' Given a tibble, calculates a chi-square statistic, with degree of freedom and p-values
#'
#' @details
#' computes a 2x2 count table, uses chisq.test() to compute the chi-sq statistics and results
#'
#' @param tib a tibble of data with at least 2 columns represting grouping variables
#' @param v1 string representing column name of first grouping variable in the tibble
#' @param v2 string representing column name of second grouping variable in the tibble
#' @return Chi Sq test statistic object, with X2, df, and p-values
#'
#' @examples
#' #using a sample daaset from Dr. McKay's website
#' count_data <- read.csv("https://jlucasmckay.bmi.emory.edu/global/bmi585/demographics.csv")
#' chiSquareCounts(count_data,"sex","group")

#From Homework 7
chiSquareCounts <- function(tib, v1, v2){
  #takes a data set and 2 named variables to count chi2
  count_table<-with(tib, table(sex, group))
  chisq.test(count_table)
}

