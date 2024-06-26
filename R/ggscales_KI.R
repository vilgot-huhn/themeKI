#' Discrete Scale Functions
#'
#' These functions adds the KI color palette to your plot.
#'
#' @param ...
#' @param color Lets you chose between different discrete color palettes. Input either `a`,`b` or `c` for different orders.
#'
#' @examples
#' #generate fake data
#' df2 <- data.frame(A=rbinom(100,5,prob=0.2),B=as.factor(rbinom(100,7,prob = 0.4)))
#'
#' #theme 1
#' ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
#'   theme_KI() + scale_fill_KI_discrete(colors = 1) +
#'   xlab("X-axis means nothing") + ylab("This is nonsense data") + ggtitle("Figure 2.")
#'
#'#theme 2
#' ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
#'  theme_KI_2() + scale_fill_KI_discrete(colors = 1) +
#'  xlab("X-axis pretty font") + ylab("Total counts") + ggtitle("Figure 1.")
scale_color_KI_discrete <- function(colors = "a" ,...){
  switch(colors,
         a = ggplot2::discrete_scale("colour","KI",palette = KI_pal()),
         b = ggplot2::discrete_scale("colour","KI",palette = KI_pal_2()),
         c = ggplot2::discrete_scale("colour","KI",palette = KI_pal_3()),
         stop("unknown input, input a letter e.g. 'a', 'b', 'c' ")
         )
}

scale_fill_KI_discrete <- function(colors = "a" ,...){
  switch(colors,
         a = ggplot2::discrete_scale("fill","KI",palette = KI_pal()),
         b = ggplot2::discrete_scale("fill","KI",palette = KI_pal_2()),
         c = ggplot2::discrete_scale("fill","KI",palette = KI_pal_3()),
         stop("unknown input, input a letter e.g. 'a', 'b', 'c' ")
  )
}



#' Continuous Scale Functions
#'
#' These functions adds the KI color palette to your plot.
#'
#' @param ...
#'
#' @examples
#' #generate fake data
#' df2 <- data.frame(A=rbinom(100,5,prob=0.2),B=as.factor(rbinom(100,7,prob = 0.4)))
#'
#' #theme 1
#' ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
#'   theme_KI() + scale_fill_KI_discrete(colors = 1) +
#'   xlab("X-axis means nothing") + ylab("This is nonsense data") + ggtitle("Figure 2.")
#'
#'#theme 2
#' ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
#'  theme_KI_2() + scale_fill_KI_discrete(colors = 1) +
#'  xlab("X-axis pretty font") + ylab("Total counts") + ggtitle("Figure 1.")
scale_fill_KI_continuous <- function(...) {
  ggplot2::scale_fill_gradient(low = KI_theme_colors["dark"], high = KI_theme_colors["light"], ...)
}

scale_color_KI_continuous <- function(...) {
  ggplot2::scale_color_gradient(low = KI_theme_colors["dark"], high = KI_theme_colors["light"], ...)
}
