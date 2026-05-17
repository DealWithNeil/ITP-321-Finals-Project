# ggplot2: Bar chart showing the count of each iris species

# Load ggplot2 package for creating graphs
library(ggplot2)

# Load built-in iris data set containing flower measurements
data(iris)

# Create bar chart
ggplot(iris, aes(x = Species, fill = Species)) +
  
  # Automatically count number of observations per species
  geom_bar() +
  
  # Add title to describe what is being compared
  ggtitle("Count of Iris Species") +
  
  # Label x-axis to indicate flower categories
  xlab("Species") +
  
  # Label y-axis to indicate frequency/count
  ylab("Count")