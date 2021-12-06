Specificity <-function(pred, truth){
  counts <- GetCounts(pred,truth)
  #specificity = true neg / (true neg + false pos)
  counts[2] / (counts[2]+counts[3])
}
