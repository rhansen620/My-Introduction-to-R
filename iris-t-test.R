# t-test on iris petal lengths
# Rachel Hansen
# rachelhansen@arizona.edu
# 2023-01-24

# Subset data for two Iris species
setosa <- iris[iris$Species == "setosa", ]
#setosa_sepals <- iris[iris$Species == "setosa" , 
#               c("Sepal.Length", "Sepal.Width")]
versicolor <- iris[iris$Species == "versicolor", ]

#Compare petal length in two species
t.test(x = setosa$Petal.Length, 
       y = versicolor$Petal.Length)

#ANOVA on petal length
petal_length_aov <- aov(Petal.Length ~ Species, data = iris)
summary(petal_length_aov)

