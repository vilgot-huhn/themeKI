#Theme functions
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

