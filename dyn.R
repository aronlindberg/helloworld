library('quantreg')
library('xts')

info <- read.csv(file.choose(),header = F, sep = ',')


require(zoo)
explore <- info[1:87,2:21]

dlr <- dynrq(explore ~ L(explore,2) + L(explore, 21), tau = 99/100, start = c(2,2), end = c(87,21))



exploit <- info[88:212,2:21]
exploit