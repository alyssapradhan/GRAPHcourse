library(tidyverse)
library(here)

tvhours_table <- gss_cat %>% group_by(marital) %>% 
  filter(age >= 30) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE))

write.csv(tvhours_table, here("TV_hours_marital.csv"))