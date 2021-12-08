#' @title PC Approximation
#' 
#' @description returns an approximation to the data based on a number of principal components
#' 
#' @details takes a tibble or dataframe, a number of principal components to include, and returns an n x m dimensional estimate such that n is the number of observations and m = npc
#' 
#' @param x a tibble or dataframe
#' @param npc number of principal components to use in estimate
#' 
#' @examples 
#' X <- tibble(iris[,-which(names(iris)=="Species")]) #iris dataset without species
#' pcApprox(X, 2)

#A function that returns an approximation to the data x based on npc PCs. 
#(Note that the approximation should be rescaled and centered to match the original data). 
#Should work on tibbles or dataframes; either can be returned.

pcApprox <- function(x,npc){
  pca <- princomp(X) #computes principal components
  X <- as.matrix(X)  #savse X as matrix
  loadings <- as.matrix(pca$loading[,1:npc]) #gets loadings from pca, use M x m matrix where m = number of principal components
  scores <- X %*% loadings #computes scores
  estimates <- scores %*% t(loadings) #computes estimates
  tibble(estimates) #returns m dimensional estimates as tibbles
} 




