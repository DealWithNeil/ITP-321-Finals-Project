#ggplot1
library(ggplot2)

data(mtcars)

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "blue") +
  ggtitle("Car Weight vs MPG") +
  xlab("Weight") +
  ylab("Miles per Gallon")