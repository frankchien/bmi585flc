#' @title Principal Component Lollipop Plot
#'
#' @description plots the lollipop plot from principal component analysis given a tibble
#'
#' @details takes a tibble or dataframe and plots the loading matrix computed by principal component analysis
#'
#' @param x a tibble or dataframe
#' @param npc number of principal components to use in estimate
#'
#' @examples
#' X <- tibble(iris[,-which(names(iris)=="Species")]) #iris dataset without species
#' pcLollipop(X)

pcLollipop <- function(x){
  loadings <- prcomp(x)$rotation |> tibble()
  loadings |> ggplot2::ggplot()
  loadings

}
