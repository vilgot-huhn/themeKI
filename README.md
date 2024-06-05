# themeKI
A custom ggplot2 theme with Karolinska Institutet colour palette and font.
*So far this is a work in progress*

# Setup

### 1. Install the package
You can download the package from github using the remotes package.

```
install.packages("remotes")
remotes::install_github("vilgot-huhn/themeKI")
```

### 2. Install the correct font
In order for the plots to use the KI preferred open source font "DM Sans" you need to download that font.

```
install.packages("sysfonts")
library(sysfonts)
font_add_google("DM Sans")
```

### 3. Test it out with simulated data
Test it out with simulated data. If you get `warnings()` it probably means the font installation didn't work. In that case you may need to rerun the font installation `font_add_google("DM Sans")`  in new R sessions.

```
library(ggplot2)
library(themeKI)

#fake data
df2 <- data.frame(A=rbinom(100,5,prob=0.2),B=as.factor(rbinom(100,7,prob = 0.4)))

#theme 1
ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
  theme_KI() + scale_fill_KI_discrete(colors = "a") +
  xlab("X-axis means nothing") + ylab("This is nonsense data") + ggtitle("Figure 2.")

#theme 2  
ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
  theme_KI_2() + scale_fill_KI_discrete(colors = "a") +
  xlab("X-axis pretty font") + ylab("Total counts") + ggtitle("Figure 1.")
```

# How to use and some things to keep in mind
1. The `theme_KI()` and `theme_KI_2()` functions only changes the style of the background and the font. In order to get color you ned to use the color functions.
2. ggplot2 differs betweem fill and color, which means you need to be aware of whether to use `scale_fill_KI_discrete()` or `scale_color_KI_discrete()`. If you want to use continuous colors, instead use `scale_fill_KI_continuous()`
3. For the discrete color functions you can choose between different KI-themed color palettes by inputting a letter a, b, c. `scale_fill_KI_discrete("b")`.
4. KI recommends black borders for readability on things like barplots. Some of the colors are light and don't show up well without it. Black borders have to be added manually, like in the examples with simulated data above.
5. As mentioned above, so far I've had to rerun `font_add_google("DM Sans")` from the package sysfonts each new R session to get the font right.
