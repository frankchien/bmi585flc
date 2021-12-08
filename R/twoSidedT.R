#' @title
#' Two Sided T-Test
#'
#' @description
#' Takes a test statistic t, a degree of freedom and computes the two sided area under the t-density
#'
#' @details
#' Computes two sided area under t-density using R's pt function. Left sided area under density is computed, and doubled.
#'
#' @param t a t-statistic to compute area
#' @param df degrees of freedom
#'
#' @return  two sided area under t-density given t, df
#'
#' @examples
#' twoSidedT(2, df=10)

twoSidedT = function(t,df){ #returns the 2 sided area under density >= abs(t) with df degrees of freedom
  t<-abs(t)
  2*(1-pt(t,df)) #pt gives area left
}

