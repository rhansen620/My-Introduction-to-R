# Test relationship between life expectancy and GDP
# Rachel Hansen
# rachelhansen@arizona.edu
# 2023.1.24

all_gapminder <- read.csv(file = "data/gapminder-FiveYearData.csv")

#Subset 2007 data
gapminder <- all_gapminder[all_gapminder$year == 2007, ]

#Plot data
plot(x = gapminder$gdpPercap, y= gapminder$lifeExp)

#Create log-transformed GDP
gapminder$logGDP <- log10(gapminder$gdpPercap)

plot(x= gapminder$logGDP, y = gapminder$lifeExp)

#Run linear regression
lifeexp_lm <- lm(lifeExp ~ logGDP, data = gapminder)
summary(lifeexp_lm)
