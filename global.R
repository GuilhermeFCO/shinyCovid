library(shiny)
library(tidyverse)
library(ggplot2)
library(sf)

l <- ls()
f <- "n"
for(i in 1:length(l)){
	if(length(l) == 0)
		break
	else
		if (l[i] == "cities") {
			f <- "y"
		}
}
if (f == "n")
	source("./download.R")

get_query <- function(query, param){
	p <- query[[param]]

	if(is.null(p))
		p <- ""

	if(p == "true" || p == "false"){
		p <- toupper(p)
		p <- as.logical(p)
	}

	return(p)
}
