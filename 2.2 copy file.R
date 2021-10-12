

# Começa com um unico arquivo
list.files(path = "Weather/2017/", full.names = TRUE)

from_path <- list.files(path = "Weather/2017/", full.names = TRUE)


library(tidyverse)


y <- 2017:2020

paste0("Weather/", y, "/",y,".csv")


my_copy_function <- function(x) {
  
  from_path <- paste0("Weather/", x, "/",x,".csv")
  file.copy(from = from_path, to = "Weather")
  
}

my_copy_function(2017)


walk(.x = 2017:2020, .f = safely(my_copy_function))
