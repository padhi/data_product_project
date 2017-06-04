Diamond Price By Size, Color & Cut
========================================================
author: Ayuta Padhi
date: 06/03/2017
autosize: true

Exploring Diamond Price
========================================================
Goal of the project

- Creat a shiny web application and deploy on Rstudio's shiny server.
- Use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation

The Application
========================================================

This application uses the "diamonds" dataset from the "ggplot2" library. 

Link to shiny application: https://padhi.shinyapps.io/diamondprice/

Users can use this simple application to

- filter the diamonds dataset by "carat" by sliding the slider
- filter the diamonds dataset by "color" by clicking the radio options
- filter the diamonds dataset by both "color" & "carat"
- view the size and price of a diamond by hovering over a plotted point.

The Data
========================================================


```r
library(ggplot2)
head(diamonds,5)
```

```
# A tibble: 5 × 10
  carat     cut color clarity depth table price     x     y     z
  <dbl>   <ord> <ord>   <ord> <dbl> <dbl> <int> <dbl> <dbl> <dbl>
1  0.23   Ideal     E     SI2  61.5    55   326  3.95  3.98  2.43
2  0.21 Premium     E     SI1  59.8    61   326  3.89  3.84  2.31
3  0.23    Good     E     VS1  56.9    65   327  4.05  4.07  2.31
4  0.29 Premium     I     VS2  62.4    58   334  4.20  4.23  2.63
5  0.31    Good     J     SI2  63.3    58   335  4.34  4.35  2.75
```

The Code
========================================================

Source code for this project can be found at github.

https://github.com/padhi/data_product_project
