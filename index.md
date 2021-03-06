---
title       : Simulation of Bass Model
subtitle    : Effect of variations on model parameters
author      : Nicolas Oteiza
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}     # 
widgets     : [bootstrap, mathjax, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
ext_widgets : {rCharts: [libraries/nvd3]}
github:
  user: nicoTrombon
  repo: appPresentation
---

## Introduction

The Bass model for the diffusion of innovations was introduced by Frank Bass in 1969.
Since then, it has become a reference in terms of studying new product diffusion.

The application presented here tries to show the effect of varying the model's two main parameters.
Parameter 'p' increases the "external effect" also known as the "coefficient of innovation".
Parameter 'q' incresases the "internal effect" also known as the "coefficient of imitation".

The aggregate sales (S) as described by the Bass Model is shown as follows:

$$S_t= \frac{1-e^{-(p+q)t}}{1+\frac{p}{q}e^{(p+q)t}}$$

Usually, the aggregate sales curve will follow an 'S' shape, with the innovators coming in at first, and the effect of imitation getting stronger when more consumers have already adopted the innovation.


--- .class1 #id1 bg:yellow

## Application Goal

The _objective_ of this application is:

1. Familiarize a user with the Bass Model for Diffusion of Innovations.
2. Give the user a real understanding of the models parameters by interacting with it.

--- .class1 #id1 bg:orange

## App functionality

This application allows the user to modify


+ Parameter 'p', and
+ Parameter 'q'

And _dinamically_ observe the new aggregate sales curve corresponding to those parameters.

--- .class #id

## Example of Calculation

If we have p=0.02 and q=0.4 for example, for t in years from 2014 to 2034 we would have:

```r
library(ggplot2)
library(shiny)
p=0.02
q=0.4
Year<-seq(2014,2034,by=1)
t<-Year-min(Year)
MarketShare<-(1-exp(-(p+q)*t))/(1+(q/p)*exp(-(p+q)*t))
dataset=data.frame(Year, MarketShare)
p<-ggplot(data=dataset,aes(x=Year,y=MarketShare)) + geom_line(size=2, colour="red") + geom_point(size=6, fill="white") + scale_shape_manual(values=c(22,21))
print(MarketShare)
```

```
##  [1] 0.00000 0.02425 0.05899 0.10735 0.17211 0.25442 0.35242 0.46037
##  [9] 0.56958 0.67093 0.75775 0.82715 0.87964 0.91768 0.94442 0.96280
## [17] 0.97526 0.98361 0.98917 0.99286 0.99530
```







