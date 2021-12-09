#' @title Principal Component Lollipop Plot
#'
#' @description plots the lollipop plot from principal component analysis given a tibble
#'
#' @details takes a tibble or dataframe and plots the loading matrix computed by principal component analysis. Uses ggplot to render graphic
#'
#' @param x a tibble or dataframe
#' @param npc number of principal components to use in estimate
#'
#' @value plots lollipop ggplot
#'
#' @examples
#' x <- iris[1:4]
#' pcLollipop(x)

pcLollipop <- function(x){
  pca_rotations<-prcomp(x)$rotation
  row_names <- pca_rotations[,1] |> names()
  rotations_tib <- pca_rotations |> tidyr::as_tibble() #|> add_column(row_names)
  rotations_tib$attributes <- row_names
  melted_rotations_tib <- rotations_tib|> tidyr::pivot_longer(cols=!attributes) |> dplyr::group_by(name)

  withr::with_package("ggplot2", {
    ggplot(melted_rotations_tib, mapping = aes(x=attributes, y=value, color=name)) +
      geom_point() +
      geom_segment(aes(x=attributes,xend=attributes, y=0, yend=value)) +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))+
      facet_grid(name~.)
  })
}
