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

library(mefa)
weight = rep(weight,811)


z1 <- NULL
z2 <- NULL
z3 <- NULL
z4 <- NULL
z5 <- NULL
z6 <- NULL
z7 <- NULL
z8 <- NULL
StationID <- NULL

for(i in 1:811) {


####################### ZONE 1############################################## 

netf1 <- netflow0116[i,seq(2, ncol(netflow0116), 8), ]
netf2 <- netflow0216[i,seq(2, ncol(netflow0216), 8), ]
netf3 <- netflow0316[i,seq(2, ncol(netflow0316), 8), ]



tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))

library(plyr)
datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)

library(data.table) #data.table_1.9.5
z1  <- rbindlist(list(z1,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)

################################################# ZONE 2

netf1 <- netflow0116[i,seq(3, ncol(netflow0116), 8), ]
netf2 <- netflow0216[i,seq(3, ncol(netflow0216), 8), ]
netf3 <- netflow0316[i,seq(3, ncol(netflow0316), 8), ]


tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)

library(data.table) #data.table_1.9.5
z2  <- rbindlist(list(z2,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)

#################### ZOne 3 ###########################################


netf1 <- netflow0116[i,seq(4, ncol(netflow0116), 8), ]
netf2 <- netflow0216[i,seq(4, ncol(netflow0216), 8), ]
netf3 <- netflow0316[i,seq(4, ncol(netflow0316), 8), ]



tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)

library(data.table) #data.table_1.9.5
z3  <- rbindlist(list(z3,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)

################ ZOne 4 ###########################################


netf1 <- netflow0116[i,seq(5, ncol(netflow0116), 8), ]
netf2 <- netflow0216[i,seq(5, ncol(netflow0216), 8), ]
netf3 <- netflow0316[i,seq(5, ncol(netflow0316), 8), ]

tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)

library(data.table) #data.table_1.9.5
z4  <- rbindlist(list(z4,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)

# ######################### ZONE 5##################################


netf1 <- netflow0116[i,seq(6, ncol(netflow0116), 8), ]
netf2 <- netflow0216[i,seq(6, ncol(netflow0216), 8), ]
netf3 <- netflow0316[i,seq(6, ncol(netflow0316), 8), ]

tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))

datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)

library(data.table) #data.table_1.9.5
z5 <- rbindlist(list(z5,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)


################################# ZONE 6########################################


netf1 <- netflow0116[i,seq(7, ncol(netflow0116), 8), ]
netf2 <- netflow0216[i,seq(7, ncol(netflow0216), 8), ]
netf3 <- netflow0316[i,seq(7, ncol(netflow0316), 8), ]


tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)

library(data.table) #data.table_1.9.5
z6 <- rbindlist(list(z6,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)

############################ ZOne 7 ###################################3


netf1 <- netflow0116[i,seq(8, ncol(netflow0116), 8), ]
netf2 <- netflow0216[i,seq(8, ncol(netflow0216), 8), ]
netf3 <- netflow0316[i,seq(8, ncol(netflow0316), 8), ]


tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)

library(data.table) #data.table_1.9.5
z7  <- rbindlist(list(z7,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)

################################## ZONE 8  #############################################


netf1 <- netflow0116[i,seq(9, ncol(netflow0116), 8), ]
netf2 <- netflow0216[i,seq(9, ncol(netflow0216), 8), ]
netf3 <- netflow0316[i,seq(9, ncol(netflow0316), 8), ]

tnetf1 <- as.data.frame(t(netf1))
tnetf2 <- as.data.frame(t(netf2))
tnetf3 <- as.data.frame(t(netf3))


datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3)

library(data.table) #data.table_1.9.5
z8  <- rbindlist(list(z8,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)

###################################################
}

a <- seq(1,811,1)
a <- as.data.frame(a)
a <- rep(row.names(a),each = 90)
a <- as.data.frame(a, row.names(F))

weight$StationID <- a
weight$z1 <- z1
weight$z2 <- z2
weight$z3 <- z3
weight$z4 <- z4
weight$z5 <- z5
weight$z6 <- z6
weight$z7 <- z7
weight$z8 <- z8

weight$holiday <- as.factor(weight$holiday)

weight2018 <- weight


#write.csv(weight, "72weight2018.csv", row.names = FALSE)
