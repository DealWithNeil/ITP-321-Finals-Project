# ggplot1: Scatter plot showing relationship between car weight and fuel efficiency

# Load ggplot2 package for data visualization
library(ggplot2)

# Load built-in data set containing car specifications
data(mtcars)

# Create scatter plot
ggplot(mtcars, aes(x = wt, y = mpg)) +
  
  # Plot each car as a point to visualize distribution and relationship
  geom_point(color = "blue") +
  
  # Add a descriptive title to explain what the graph represents
  ggtitle("Car Weight vs MPG") +
  
  # Label x-axis to clarify that it represents car weight
  xlab("Weight") +
  
  # Label y-axis to clarify that it represents fuel efficiency
  ylab("Miles per Gallon")