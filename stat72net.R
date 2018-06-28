
# net2016 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2016.csv")
# net2017 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2017.csv")
# net2018 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2018.csv")


stnet  <- rbind.fill(weight2016,weight2017,weight2018)

library(dplyr)
finalNet <- rename(stnet, date = dat2,
            station_id = a,
            Netflow_TZ1 = X1,
            Netflow_TZ2 = X1.1,
            Netflow_TZ3 = X1.2,
            Netflow_TZ4 = X1.3,
            Netflow_TZ5 = X1.4,
            Netflow_TZ6 = X1.5,
            Netflow_TZ7 = X1.6,
            Netflow_TZ8 = X1.7)
# 
# write.csv(finalNet, "statnet.csv", row.names = FALSE)
# saveRDS(finalNet, file = "finaldata.rds")

# finalNet <- rename(finalNet, a = station_id)
finalNet$a <- as.integer(finalNet$a)
finalStation <- merge(x = finalNet, y = station)

finalStation$station_id <- as.factor(finalStation$station_id)
finalStation <- finalStation[,c(2:5,14,6:13)]

write.csv(finalStation, "statnet.csv", row.names = FALSE)
saveRDS(finalStation, file = "finaldata.rds")


###########################################################

finalStatn  <- readRDS(file = "C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/finaldata.rds")


wei <- finalStatn
w1 <- wei[wei$date >= "2018-03-01" & wei$date <= "2018-03-31",]


store <- apply(dist,1 ,function(x) which(x==1))
head(store)

store <- as.data.frame(store)


