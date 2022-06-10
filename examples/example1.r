setwd("/home/caballero/Datasets/stock-market/Data/ETFs")

filenames <- list.files("./", pattern = "*.txt", full.names = TRUE)

length(filenames)

prices <- unlist( sapply(1:1344, function(i){
  r <- read.table(file = filenames[[i]], header = TRUE, sep = ",")
  return ( r["Close"] ) 
  }) )

rm(list = "filenames")

hist(prices, breaks = 50)

logprices = sapply(prices, log)

hist(logprices, breaks = 70)
