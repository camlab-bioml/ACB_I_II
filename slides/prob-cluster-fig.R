
library(tidyverse)
library(cowplot)

df <- tribble(
  ~ scenario, ~cluster, ~p,
  "High confidence", "A", 0.9,
  "High confidence", "B", 0.01,
  "High confidence", "C", 0.09,
  "Low confidence", "A", 0.4,
  "Low confidence", "B", 0.28,
  "Low confidence", "C", 0.32
)

ggplot(df, aes(x = cluster, y = p)) +
  geom_bar(stat='identity') +
  facet_wrap(~ scenario) +
  theme_cowplot() +
  labs(y = "Assignment probability") +
  theme(strip.background = element_rect(fill = 'grey90'))

ggsave("unsupervised-learning-figs/cluster_assignment_probability.png", width=6, height=3)
