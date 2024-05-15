# themeKI
A custom ggplot2 theme with Karolinska Institutet colour palette and font.

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
