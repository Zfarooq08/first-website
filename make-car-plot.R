library(tidyverse)
library(ggthemes)

car_plot <-
  mtcars |> 
  select(mpg, wt) |>
  ggplot(aes(wt, mpg)) +
  geom_point()+
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE)+
  theme_clean()
write_rds(car_plot, "car-plot.rds")
