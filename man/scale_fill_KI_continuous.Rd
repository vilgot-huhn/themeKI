% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggscales_KI.R
\name{scale_fill_KI_continuous}
\alias{scale_fill_KI_continuous}
\title{Continuous Scale Functions}
\usage{
scale_fill_KI_continuous(...)
}
\arguments{
\item{...}{}
}
\description{
These functions adds the KI color palette to your plot.
}
\examples{
#generate fake data
df2 <- data.frame(A=rbinom(100,5,prob=0.2),B=as.factor(rbinom(100,7,prob = 0.4)))

#theme 1
ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
  theme_KI() + scale_fill_KI_discrete(colors = 1) +
  xlab("X-axis means nothing") + ylab("This is nonsense data") + ggtitle("Figure 2.")

#theme 2
ggplot(df2, aes(A, fill = B)) + geom_bar(colour = "black", position = position_dodge(preserve = "single")) +
 theme_KI_2() + scale_fill_KI_discrete(colors = 1) +
 xlab("X-axis pretty font") + ylab("Total counts") + ggtitle("Figure 1.")
}
