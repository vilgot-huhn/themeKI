#scale functions

#Colour is set to palette 1 by default but can be changed to 2 or 3
scale_color_KI_discrete <- function(colors = 1 ,...){
  if(colors == 1) {
    ggplot2::discrete_scale("colour","KI",palette = KI_pal())
  } else if(colors == 2){
    ggplot2::discrete_scale("colour","KI",palette = KI_pal_2())
  } else if(colors == 3){
    ggplot2::discrete_scale("colour","KI",palette = KI_pal_3())
  }
}

scale_fill_KI_discrete <- function(colors = 1 ,...){
  if(colors == 1) {
    ggplot2::discrete_scale("fill","KI",palette = KI_pal())
  } else if(colors == 2){
    ggplot2::discrete_scale("fill","KI",palette = KI_pal_2())
  } else if(colors == 3){
    ggplot2::discrete_scale("fill","KI",palette = KI_pal_3())
  }
}

#Continuous colors based on theme
scale_fill_KI_continuous <- function(...) {
  ggplot2::scale_fill_gradient(low = KI_theme_colors["dark"], high = KI_theme_colors["light"], ...)
}

scale_color_KI_continuous <- function(...) {
  ggplot2::scale_color_gradient(low = KI_theme_colors["dark"], high = KI_theme_colors["light"], ...)
}
