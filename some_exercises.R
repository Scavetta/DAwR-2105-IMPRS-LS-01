# Some Exercises

# Load packages
library(tidyverse)

# Data (built into base R)
chickwts

# Get the mean and SD of weight for each type of feed:
chickwts_summary <- chickwts %>% 
  group_by(feed) %>% 
  summarise(avg = mean(weight),
            stdev = sd(weight),
            n = n())

# Plot the raw data:
# n.b.: ALWAYS plot the RAW data before plotting
# some kind of a summary (i.e. box plot)

# Bar plot: show COUNT of each group
# NOT mean and SD
ggplot(chickwts, aes(x = feed)) +
  geom_bar()
# using geom_bar, the y axis is defined 
# by the COUNT internally


