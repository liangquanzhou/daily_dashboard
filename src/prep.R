# load packages
pacman::p_load(tidyverse, data.table, rmarkdown, knitr)

daily <- readxl::read_xlsx("selfdata.xlsx", sheet = 1)
monthly <- readxl::read_xlsx("selfdata.xlsx", sheet = 2)

life_data <- list()
life_data$daily <- daily
life_data$monthly <- monthly

readr::write_rds(life_data, "life_data.rds")

