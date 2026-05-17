# data-science-2
data(iris)

# Compute average petal length per species
aggregate(Petal.Length ~ Species, data = iris, mean)

library(ggplot2)

ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  stat_summary(fun = mean, geom = "bar") +
  ggtitle("Average Petal Length per Species")