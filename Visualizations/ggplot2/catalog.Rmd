---
title: "Catalog of plots"
author: "Moycoyani Molina-Espíritu"
date: "October 01, 2018"
output:
    github_document:
    html_preview: false
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Catalog

A catalog of several plots, and formats, is found in this notebook. The main idea is to have the right code for the right plot, and do not waste time by coding the plots again and again.

```{r open, echo=TRUE, message=FALSE, warning=FALSE}
library(ggplot2)
count <- plyr::count
```
Unlike python, ggplot customization is straightforward. The syntax is compossed by few componentes, the most important are the __data component__, the __geometrical representation__ of the data, and the __coordinate system__. As we pretend to have an uniform format for our plots, we set this format with: 
```{r formating, echo=TRUE}
labels_g <- function(l_title,xlabel,ylabel)
{return(labs(title=l_title,x=xlabel,y=ylabel))
}
  
format_g <- function(fontsize)
{return(theme(axis.ticks = element_line(colour = '#B1B1B1'), axis.text=element_text(size=fontsize,colour='#B1B1B1'),
                 axis.title=element_text(size=fontsize,colour='#B1B1B1'),
                 plot.title = element_text(size=fontsize*1.5,colour='#545454',margin=margin(0,0,30,0)),
                 panel.grid.major = element_blank(),
                 panel.grid.minor = element_blank(),
                 panel.background = element_blank(),
                 axis.line=element_line(colour='#B1B1B1')))}
```
The format is builded by considering design elements that improve the visualization of the plot.

## Scatter plot
Do you want to see the relationship among two (or more) variables? This is the chart you are looking for.

## Examples

### 2D functions
```{r plot2d, echo=TRUE}
#Building th dataset
x_ <- seq(0,200,length.out = 200)
y_ = 0.25*x_ - 1
df <- data.frame(y_,x_)

#plot the dataset
g <- ggplot(df,aes(x_,y_))
#defines the geometry for the scatter plot
g <- g + geom_point(alpha=0.4,colour='#3C77B5',size=5)
g + format_g(15) + labels_g('Descriptive title for the plot','x label','y label')
```
