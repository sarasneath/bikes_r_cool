#Build a simple graph

#load packages
library(ggplot2)
library(EVR628tools)

#load data
data("data_heatwaves")

#build a plot
p <- ggplot(data = data_heatwaves,
       mapping = aes(x = year, y = temp_mean,
                     group = paste(fishery, eu_rnpa))) +
  geom_line(llinewidth = 1.5)

#export my plot
ggsave(plot = p,
       filename = "results/img/mean_temp.png")


