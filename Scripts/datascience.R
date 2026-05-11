#data-science-1

data(mtcars)

# Create linear regression model
model <- lm(mpg ~ wt, data = mtcars)

# Show results
summary(model)

library(ggplot2)

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", color = "red")