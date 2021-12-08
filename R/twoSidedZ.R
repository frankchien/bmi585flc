#' @title
#' Two Sided Z-Score
#'
#' @description
#' Take a Z-statistic and computes two sided area under the Z-desnity
#'
#' @details
#' Computes two sided area under z-density using R's pnorm function. Left sided area under density is computed, and doubled.
#'
#' @param z a value for the z-statistic
#' @return  two sided area under z-density given a value for z statistic
#'
#' @examples
#' twoSidedZ(2)

twoSidedZ = function(z){ #returns the 2 sided area under density >= abs(z)
  z <- abs(z)
  2*(1-pnorm(z))
}

