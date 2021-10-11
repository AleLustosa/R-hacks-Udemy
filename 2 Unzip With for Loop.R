library(R.utils)



myzipfile <- list.files(path = "Zip files/", pattern = ".gz", full.names = TRUE)

myzipfile


# For loop

for(i in myzipfile) {
  
  print(i)
  gunzip(i, remove= FALSE)
  
}


# Utilizando Walk()

library(tidyverse)

# Utilizacao do safely() para nao parar a execucao caso ocorra um erro (no caso ja existe arquivo na pasta)
walk(.x = myzipfile, .f = safely(gunzip), remove = TRUE)