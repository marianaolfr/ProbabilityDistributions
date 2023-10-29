install.packages("gapminder")
library(gapminder)
library(dplyr)
data(gapminder)
head(gapminder)

# Create a vector x of the life expectancies of each country for the year 1952.
x <- filter(gapminder, year== 1952) %>% select(lifeExp) %>% unlist

#Plot a histogram of these life expectancies to see the spread of the different countries.
hist(x, 
     main = "Life expectancies of different countries", # title of the histogram
     xlab = "Life expectancy (year)", # label for the x-axis
     ylab = "Country Count", # label for the y-axis
     col = "lightblue",      # color of the bars
     border = "black",       # color of the bar borders
     breaks = 5) # number of bins (breaks) to use in the histogram

# What is the proportion of countries in 1952 that have a life expectancy less than or equal to 40?
mean(x <= 40)
