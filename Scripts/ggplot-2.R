#ggplot-2
library(ggplot2)

data(iris)

ggplot(iris, aes(x = Species, fill = Species)) +
  geom_bar() +
  ggtitle("Count of Iris Species") +
  xlab("Species") +
  ylab("Count")