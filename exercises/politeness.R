## Modelling the relationship between politeness and pitch
##
## Below is a series of questions and exercises intended to guide you through the
## analysis of the politeness data. A few lines of R code are provided to help you
## get started.

## Load all required packages
library(ggplot2)
library(lattice)
library(lme4)
library(lmerTest)
library(readr)
library(tidyr)
library(dplyr)

## Data exploration
## Load the pitch and politeness data.
politeness_data <- read_csv(file.path("..", "data", "politeness_data.csv"))

## Examine the data. Some questions you should be able to answer after examining the data are:
##    - How many individuals are in the study?
##    - How many conditions?
##    - How many observations did each individual contribute per condition?


## Reshape the data to prepare for plotting
politeness_wide <- politeness_data %>% select(-total_duration) %>% spread(key=attitude, value=frequency)

## Create a scatterplot of pitch in the informal and polite conditions.
## Colour points by the speaker's gender and add a regression line.
##    Hint: Use `geom_smooth(method="lm")` to add regression lines to your scatter plot.


## What do you observe?


## Create a plot showing frequency by attitude for each subject.
##    Hint: `facet_wrap(~subject)` will allow you to create a separate plot for each subject


## What trends do you observe in the data?


## Multiple linear regression
## Fit a multiple linear regression model to the data, using `frequency` as dependent
## variable and `attitude` and `gender` as independent variables.
## Based on the plots of the data above, does it seem necessary to include an
## interaction between attitude and gender?


## Why is this model likely to be inappropriate?


## Examine the model fit using a Q-Q plot and a residual plot.


## Create a plot of residuals and fitted values. Distinguish between the two attitudes and between subjects.
politeness_lm_fit <- politeness_data %>% mutate(residuals=rstandard(fit_lm), fitted=fitted(fit_lm))


## Use a linear mixed effects model to account for the clustering of the data.
## In the height example, we used a *Family* random effect to model the structure
## of the data. Here a *subject* random effect seems appropriate.


## Use the `ranova()` function to check whether the subject random effect is justified.


## Create diagnostic plots to examine the model fit.


## In addition to repeated measures from each *subject* the data also contain multiple
## observations for each *scenario*. This may create another layer of clustering,
## separately from the one based on subjects. Try adding a second random effect to the model.
