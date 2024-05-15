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
Test it out with simulated data. If you get `warnings()` it probably means the font installation didn't work.

*Be aware* you may need to rerun the font installation in new R sessions.

```
library(ggplot2)

#fake data
df2 <- data.frame(A=rbinom(100,5,prob=0.2),B=as.factor(rbinom(100,7,prob = 0.4)))

#theme 1
ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
  theme_KI() + scale_fill_KI_discrete(colors = 1) +
  xlab("X-axis means nothing") + ylab("This is nonsense data") + ggtitle("Figure 2.")

#theme 2  
ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
  theme_KI_2() + scale_fill_KI_discrete(colors = 1) +
  xlab("X-axis pretty font") + ylab("Total counts") + ggtitle("Figure 1.")
```
