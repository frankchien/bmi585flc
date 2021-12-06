#' gets sensitivity given set of predictions and set of ground truths
#' predictions and ground truths can either be boolean or 1 and 0, must be same length
#' 
#' @param pred vector of 1/0 or True and False representing predictions
#' @param truth vector of 1/0 or True and False representing gold standards or ground truths
#' @return  the sensitivity given as true pos/(true pos + false neg)
#' @examples 
#' sensitivity(c(T,T,F,T), c(T,T,F,F))

Sensitivity <- function(pred, truth){ #takes either logical vectors or 1 and 0s
  counts <- GetCounts(pred,truth)
  #sensitivity = true pos / (true pos + false neg)
  counts[1] / (counts[1] + counts[4]) #see comments for get counts for indices
}
