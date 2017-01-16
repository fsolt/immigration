library(DCPO)
library(tidyverse)
library(stringr)


im <- dcpo_setup(vars = "data-raw/immigration_vars.csv",
                 file = "data/immigration_vars.csv")

im <- read_csv("data/immigration_vars.csv")

x <- im %>% with_min_yrs(3)
out1 <- dcpo(x, iter = 4000)
save(out1, file = str_c("results/im_", str_replace(Sys.time(), " ", "_"), ".rda"))
