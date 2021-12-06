#' gets specificity given set of predictions and set of ground truths
#' predictions and ground truths can either be boolean or 1 and 0, must be same length
#'
#' @param pred vector of 1/0 or True and False representing predictions
#' @param truth vector of 1/0 or True and False representing gold standards or ground truths
#' @return  the specificity given as true neg/(true neg + false pos)
#' @examples
#' sensitivity(c(T,T,F,T), c(T,T,F,F))

specificity <-function(pred, truth){
  counts <- GetCounts(pred,truth)
  #specificity = true neg / (true neg + false pos)
  counts[2] / (counts[2]+counts[3])
}
