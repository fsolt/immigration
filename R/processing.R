library(tidyverse)
library(stringr)
library(DCPO)


im <- dcpo_setup(vars = "data-raw/immigration_vars.csv",
                 file = "data/immigration_vars.csv")

im <- read_csv("data/immigration_vars.csv")

x <- im %>% with_min_yrs(5)
out1 <- dcpo(x, iter = 400)
save(out1, file = str_c("data/im_", str_replace(Sys.time(), " ", "_"), ".rda"))
