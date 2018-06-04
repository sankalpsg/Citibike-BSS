######################## NETFLOW #################################################

dropoff0116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201801-DropOff.csv")
pickup0116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201801-PickUp.csv")

z0116 <- names(dropoff0116)[-1]
netflow0116 <- cbind(dropoff0116[1], dropoff0116[z0116] - pickup0116[match(dropoff0116$Station_ID, pickup0116$Station_ID), z0116])

#----------------

dropoff0216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201802-DropOff.csv")
pickup0216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201802-PickUp.csv")

z0216 <- names(dropoff0216)[-1]
netflow0216 <- cbind(dropoff0216[1], dropoff0216[z0216] - pickup0216[match(dropoff0216$Station_ID, pickup0216$Station_ID), z0216])

#--------------------
dropoff0316 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201803-DropOff.csv")
pickup0316 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201803-PickUp.csv")

z0316 <- names(dropoff0316)[-1]
netflow0316 <- cbind(dropoff0316[1], dropoff0316[z0316] - pickup0316[match(dropoff0316$Station_ID, pickup0316$Station_ID), z0316])


##########################################################################

dat2 <- seq(as.Date('2018-01-01'),as.Date('2018-03-31'),by = 1)

weight <- as.data.frame.Date(dat2)

weight$day <- weekdays(as.Date(weight$dat2))
weight$month <- months(as.Date(weight$dat2))
file <- "C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/USBankHolidays.txt"
holidays <- read.table(file, header = FALSE, sep = ",")
holidays$V2 <- as.Date(holidays$V2)

weight$holiday <- ifelse(weight$dat2 %in% holidays$V2, 1, 0) 
#weight$holiday1 <- ifelse(weight$day %in% c('Saturday','Sunday'), 1, 0)

####################### ZONE 1############################################## 

netf1 <- netflow0116[1,seq(2, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(2, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(2, ncol(netflow0316), 8), ]



tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))

library(plyr)
datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)
weight$ntflowtz01 <- datas1[,1] 


################################################# ZONE 2

netf1 <- netflow0116[1,seq(3, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(3, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(3, ncol(netflow0316), 8), ]


tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)
weight$ntflowtz02 <- datas1[,1] 

#################### ZOne 3 ###########################################


netf1 <- netflow0116[1,seq(4, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(4, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(4, ncol(netflow0316), 8), ]



tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)
weight$ntflowtz03 <- datas1[,1] 

################ ZOne 4 ###########################################


netf1 <- netflow0116[1,seq(5, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(5, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(5, ncol(netflow0316), 8), ]

tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)
weight$ntflowtz04 <- datas1[,1] 


# ######################### ZONE 5##################################


netf1 <- netflow0116[1,seq(6, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(6, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(6, ncol(netflow0316), 8), ]

tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))

datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)
weight$ntflowtz05 <- datas1[,1] 

################################# ZONE 6########################################


netf1 <- netflow0116[1,seq(7, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(7, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(7, ncol(netflow0316), 8), ]


tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)
weight$ntflowtz06 <- datas1[,1] 

############################ ZOne 7 ###################################3


netf1 <- netflow0116[1,seq(8, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(8, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(8, ncol(netflow0316), 8), ]


tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)
weight$ntflowtz07 <- datas1[,1] 

################################## ZONE 8#############################################


netf1 <- netflow0116[1,seq(9, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(9, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(9, ncol(netflow0316), 8), ]

tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)
weight$ntflowtz08 <- datas1[,1] 

###################################################
weight$stationID <- 72
weight <- weight[,c(1:4,13,5:12)]


write.csv(weight, "72weight2018.csv", row.names = FALSE)
