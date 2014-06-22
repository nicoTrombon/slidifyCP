#Slidify
#make sure you have devtools
#install.packages('devtools')
#library(devtools)
#install Slidify
#install_github('slidify', 'ramnathv')
#install_github('slidifyLibraries', 'ramnathv')
library(slidify)
author("Course Proyect")
##NOW EDIT rmd FILE
#after editing...
slidify('index.Rmd')
library(knitr)
browseURL('index.html')

publish(user="nicoTrombone", repo="appPresentation")

setwd('C:/Users/Nico/Documents/GitHub/slidifyCP')

#You can no longer use the slidify function,
#since we need this document to be run using a
#shiny server. Slidify ships with a runDeck
#function that takes care of all the boilerplate
#for you. Just make sure that you are in the same
#directory as the Rmd file and then do runDeck().
runDeck()