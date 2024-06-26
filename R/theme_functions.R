
#' Theme Functions
#'
#' These functions let you add one of two KI themes.
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
theme_KI <- function(...){

  showtext::showtext_auto()

  ggplot2::theme(
    plot.background = element_rect(fill = KI_theme_colors["background"]),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_line(color = KI_theme_colors["background"], linewidth = 0.9),
    text = element_text(color = KI_theme_colors["text"], family = "DM Sans"),
    title = element_text(size=22),
    panel.background = element_rect(fill = KI_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = KI_theme_colors["border"],linewidth= NA),
    axis.title = element_text(size=18),
    axis.text = element_text(size=15,color = KI_theme_colors["text"]),
    axis.ticks = element_line(color = KI_theme_colors["background"],linewidth=1),
    legend.background = element_rect(fill = KI_theme_colors["panel"], color = NA),
    strip.background = element_rect(fill = KI_theme_colors["panel"], colour = KI_theme_colors["border"]),
    strip.text = element_text(colour = KI_theme_colors["text"]),
    ...
  )
}


#' Theme Functions 2
#'
#' These functions let you add one of two KI themes.
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
#'
theme_KI_2 <- function(...){

  showtext::showtext_auto()

  ggplot2::theme(
    plot.background = element_rect(fill = KI_theme_colors_2["background"]),
    panel.grid.minor = element_line(color = KI_theme_colors_2["background"], linewidth = 0.5),
    panel.grid.major = element_line(color = KI_theme_colors_2["background"], linewidth = 0.9),
    text = element_text(color = KI_theme_colors_2["text"], family = "DM Sans"),
    title = element_text(size=22),
    panel.background = element_rect(fill = KI_theme_colors_2["panel"]),
    panel.border = element_rect(fill = NA, color = KI_theme_colors_2["border"],linewidth= NA),
    axis.title = element_text(size=18),
    axis.text = element_text(size=15,color = KI_theme_colors_2["text"]),
    axis.ticks = element_blank(),
    legend.background = element_rect(fill = KI_theme_colors_2["panel"], color = NA),
    strip.background = element_rect(fill = KI_theme_colors_2["panel"], colour = KI_theme_colors_2["border"]),
    strip.text = element_text(colour = KI_theme_colors_2["text"]),
    ...
  )
}

