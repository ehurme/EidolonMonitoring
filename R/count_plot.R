# load count data from Eidolon green wave paper

load("C:/Users/Edward/Dropbox/MPI/Eidolon/Data/Count/count_ratio.RData")

install.packages("pacman")
library(pacman)

p_load(tidyverse, lubridate, ggplot2)

summary(batdf)

accra <- batdf[batdf$Location == "Accra",]

plot(accra$timestamp, accra$Count, type = "l",
     ylab = "Count", xlab = "Time")
years <- unique(year(batdf$timestamp))
abline(v = ymd(paste0(years,"-01-01")), lty = 2)
