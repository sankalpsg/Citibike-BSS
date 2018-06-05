######################## NETFLOW #################################################

dropoff0116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201701-DropOff.csv")
pickup0116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201701-PickUp.csv")

z0116 <- names(dropoff0116)[-1]
netflow0116 <- cbind(dropoff0116[1], dropoff0116[z0116] - pickup0116[match(dropoff0116$Station_ID, pickup0116$Station_ID), z0116])

#----------------

dropoff0216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201702-DropOff.csv")
pickup0216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201702-PickUp.csv")

z0216 <- names(dropoff0216)[-1]
netflow0216 <- cbind(dropoff0216[1], dropoff0216[z0216] - pickup0216[match(dropoff0216$Station_ID, pickup0216$Station_ID), z0216])

#--------------------
dropoff0316 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201703-DropOff.csv")
pickup0316 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201703-PickUp.csv")

z0316 <- names(dropoff0316)[-1]
netflow0316 <- cbind(dropoff0316[1], dropoff0316[z0316] - pickup0316[match(dropoff0316$Station_ID, pickup0316$Station_ID), z0316])

#-------------------------------

dropoff0416 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201704-DropOff.csv")
pickup0416 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201704-PickUp.csv")

z0416 <- names(dropoff0416)[-1]
netflow0416 <- cbind(dropoff0416[1], dropoff0416[z0416] - pickup0416[match(dropoff0416$Station_ID, pickup0416$Station_ID), z0416])

#---------------------------

dropoff0516 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201705-DropOff.csv")
pickup0516 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201705-PickUp.csv")

z0516 <- names(dropoff0516)[-1]
netflow0516 <- cbind(dropoff0516[1], dropoff0516[z0516] - pickup0516[match(dropoff0516$Station_ID, pickup0516$Station_ID), z0516])


#-------------------------------

dropoff0616 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201706-DropOff.csv")
pickup0616 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201706-PickUp.csv")

z0616 <- names(dropoff0616)[-1]
netflow0616 <- cbind(dropoff0616[1], dropoff0616[z0616] - pickup0616[match(dropoff0616$Station_ID, pickup0616$Station_ID), z0616])

#---------------------------
#-------------------------------

dropoff0716 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201707-DropOff.csv")
pickup0716 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201707-PickUp.csv")

z0716 <- names(dropoff0716)[-1]
netflow0716 <- cbind(dropoff0716[1], dropoff0716[z0716] - pickup0716[match(dropoff0716$Station_ID, pickup0716$Station_ID), z0716])

#---------------------------

#-------------------------------

dropoff0816 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201708-DropOff.csv")
pickup0816 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201708-PickUp.csv")

z0816 <- names(dropoff0816)[-1]
netflow0816 <- cbind(dropoff0816[1], dropoff0816[z0816] - pickup0816[match(dropoff0816$Station_ID, pickup0816$Station_ID), z0816])

#---------------------------

#-------------------------------

dropoff0916 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201709-DropOff.csv")
pickup0916 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201709-PickUp.csv")

z0916 <- names(dropoff0916)[-1]
netflow0916 <- cbind(dropoff0916[1], dropoff0916[z0916] - pickup0916[match(dropoff0916$Station_ID, pickup0916$Station_ID), z0916])

#---------------------------


#-------------------------------

dropoff1016 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201710-DropOff.csv")
pickup1016 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201710-PickUp.csv")

z1016 <- names(dropoff1016)[-1]
netflow1016 <- cbind(dropoff1016[1], dropoff1016[z1016] - pickup1016[match(dropoff1016$Station_ID, pickup1016$Station_ID), z1016])

#---------------------------


#-------------------------------

dropoff1116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201711-DropOff.csv")
pickup1116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201711-PickUp.csv")

z1116 <- names(dropoff1116)[-1]
netflow1116 <- cbind(dropoff1116[1], dropoff1116[z1116] - pickup1116[match(dropoff1116$Station_ID, pickup1116$Station_ID), z1116])

#---------------------------


#-------------------------------

dropoff1216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201712-DropOff.csv")
pickup1216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201712-PickUp.csv")

z1216 <- names(dropoff1216)[-1]
netflow1216 <- cbind(dropoff1216[1], dropoff1216[z1216] - pickup1216[match(dropoff1216$Station_ID, pickup1216$Station_ID), z1216])

#---------------------------








dat2 <- seq(as.Date('2017-01-01'),as.Date('2017-12-31'),by = 1)

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
  #######################   ZONE 1  ############################################## 
  
  netf1 <- netflow0116[i,seq(2, ncol(netflow0116), 8), ]
  netf2 <- netflow0216[i,seq(2, ncol(netflow0216), 8), ]
  netf3 <- netflow0316[i,seq(2, ncol(netflow0316), 8), ]
  netf4 <- netflow0416[i,seq(2, ncol(netflow0416), 8), ]
  netf5 <- netflow0516[i,seq(2, ncol(netflow0516), 8), ]
  netf6 <- netflow0616[i,seq(2, ncol(netflow0616), 8), ]
  netf7 <- netflow0716[i,seq(2, ncol(netflow0716), 8), ]
  netf8 <- netflow0816[i,seq(2, ncol(netflow0816), 8), ]
  netf9 <- netflow0916[i,seq(2, ncol(netflow0916), 8), ]
  netf10 <- netflow1016[i,seq(2, ncol(netflow1016), 8), ]
  netf11 <- netflow1116[i,seq(2, ncol(netflow1116), 8), ]
  netf12 <- netflow1216[i,seq(2, ncol(netflow1216), 8), ]
  
  
  tnetf1 <- as.data.frame(t(netf1))
  tnetf2 <- as.data.frame(t(netf2))
  tnetf3 <- as.data.frame(t(netf3))
  tnetf4 <- as.data.frame(t(netf4))
  tnetf5 <- as.data.frame(t(netf5))
  tnetf6 <- as.data.frame(t(netf6))
  tnetf7 <- as.data.frame(t(netf7))
  tnetf8 <- as.data.frame(t(netf8))
  tnetf9 <- as.data.frame(t(netf9))
  tnetf10 <- as.data.frame(t(netf10))
  tnetf11 <- as.data.frame(t(netf11))
  tnetf12 <- as.data.frame(t(netf12))
  
  library(plyr)
  datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3,tnetf4,tnetf5,tnetf6,tnetf7,tnetf8,tnetf9,tnetf10,tnetf11,tnetf12)
  
  library(data.table) #data.table_1.9.5
  z1  <- rbindlist(list(z1,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)
  #weight$ntflowtz01 <- datas1[,1] 
  
  
  ################################################# ZONE 2
  
  netf1 <- netflow0116[i,seq(3, ncol(netflow0116), 8), ]
  netf2 <- netflow0216[i,seq(3, ncol(netflow0216), 8), ]
  netf3 <- netflow0316[i,seq(3, ncol(netflow0316), 8), ]
  netf4 <- netflow0416[i,seq(3, ncol(netflow0416), 8), ]
  netf5 <- netflow0516[i,seq(3, ncol(netflow0516), 8), ]
  netf6 <- netflow0616[i,seq(3, ncol(netflow0616), 8), ]
  netf7 <- netflow0716[i,seq(3, ncol(netflow0716), 8), ]
  netf8 <- netflow0816[i,seq(3, ncol(netflow0816), 8), ]
  netf9 <- netflow0916[i,seq(3, ncol(netflow0916), 8), ]
  netf10 <- netflow1016[i,seq(3, ncol(netflow1016), 8), ]
  netf11 <- netflow1116[i,seq(3, ncol(netflow1116), 8), ]
  netf12 <- netflow1216[i,seq(3, ncol(netflow1216), 8), ]
  
  
  tnetf1 <- as.data.frame(t(netf1))
  tnetf2 <- as.data.frame(t(netf2))
  tnetf3 <- as.data.frame(t(netf3))
  tnetf4 <- as.data.frame(t(netf4))
  tnetf5 <- as.data.frame(t(netf5))
  tnetf6 <- as.data.frame(t(netf6))
  tnetf7 <- as.data.frame(t(netf7))
  tnetf8 <- as.data.frame(t(netf8))
  tnetf9 <- as.data.frame(t(netf9))
  tnetf10 <- as.data.frame(t(netf10))
  tnetf11 <- as.data.frame(t(netf11))
  tnetf12 <- as.data.frame(t(netf12))
  
  datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3,tnetf4,tnetf5,tnetf6,tnetf7,tnetf8,tnetf9,tnetf10,tnetf11,tnetf12)
  z2  <- rbindlist(list(z2,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)
  
  #weight$ntflowtz02 <- datas1[,1] 
  
  #################### ZOne 3 ###########################################
  
  
  netf1 <- netflow0116[i,seq(4, ncol(netflow0116), 8), ]
  netf2 <- netflow0216[i,seq(4, ncol(netflow0216), 8), ]
  netf3 <- netflow0316[i,seq(4, ncol(netflow0316), 8), ]
  netf4 <- netflow0416[i,seq(4, ncol(netflow0416), 8), ]
  netf5 <- netflow0516[i,seq(4, ncol(netflow0516), 8), ]
  netf6 <- netflow0616[i,seq(4, ncol(netflow0616), 8), ]
  netf7 <- netflow0716[i,seq(4, ncol(netflow0716), 8), ]
  netf8 <- netflow0816[i,seq(4, ncol(netflow0816), 8), ]
  netf9 <- netflow0916[i,seq(4, ncol(netflow0916), 8), ]
  netf10 <- netflow1016[i,seq(4, ncol(netflow1016), 8), ]
  netf11 <- netflow1116[i,seq(4, ncol(netflow1116), 8), ]
  netf12 <- netflow1216[i,seq(4, ncol(netflow1216), 8), ]
  
  
  tnetf1 <- as.data.frame(t(netf1))
  tnetf2 <- as.data.frame(t(netf2))
  tnetf3 <- as.data.frame(t(netf3))
  tnetf4 <- as.data.frame(t(netf4))
  tnetf5 <- as.data.frame(t(netf5))
  tnetf6 <- as.data.frame(t(netf6))
  tnetf7 <- as.data.frame(t(netf7))
  tnetf8 <- as.data.frame(t(netf8))
  tnetf9 <- as.data.frame(t(netf9))
  tnetf10 <- as.data.frame(t(netf10))
  tnetf11 <- as.data.frame(t(netf11))
  tnetf12 <- as.data.frame(t(netf12))
  
  datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3,tnetf4,tnetf5,tnetf6,tnetf7,tnetf8,tnetf9,tnetf10,tnetf11,tnetf12)
  library(data.table)
  z3  <- rbindlist(list(z3,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)
  
  #weight$ntflowtz03 <- datas1[,1] 
  
  ################ ZOne 4 ###########################################
  
  
  netf1 <- netflow0116[i,seq(5, ncol(netflow0116), 8), ]
  netf2 <- netflow0216[i,seq(5, ncol(netflow0216), 8), ]
  netf3 <- netflow0316[i,seq(5, ncol(netflow0316), 8), ]
  netf4 <- netflow0416[i,seq(5, ncol(netflow0416), 8), ]
  netf5 <- netflow0516[i,seq(5, ncol(netflow0516), 8), ]
  netf6 <- netflow0616[i,seq(5, ncol(netflow0616), 8), ]
  netf7 <- netflow0716[i,seq(5, ncol(netflow0716), 8), ]
  netf8 <- netflow0816[i,seq(5, ncol(netflow0816), 8), ]
  netf9 <- netflow0916[i,seq(5, ncol(netflow0916), 8), ]
  netf10 <- netflow1016[i,seq(5, ncol(netflow1016), 8), ]
  netf11 <- netflow1116[i,seq(5, ncol(netflow1116), 8), ]
  netf12 <- netflow1216[i,seq(5, ncol(netflow1216), 8), ]
  
  
  tnetf1 <- as.data.frame(t(netf1))
  tnetf2 <- as.data.frame(t(netf2))
  tnetf3 <- as.data.frame(t(netf3))
  tnetf4 <- as.data.frame(t(netf4))
  tnetf5 <- as.data.frame(t(netf5))
  tnetf6 <- as.data.frame(t(netf6))
  tnetf7 <- as.data.frame(t(netf7))
  tnetf8 <- as.data.frame(t(netf8))
  tnetf9 <- as.data.frame(t(netf9))
  tnetf10 <- as.data.frame(t(netf10))
  tnetf11 <- as.data.frame(t(netf11))
  tnetf12 <- as.data.frame(t(netf12))
  
  datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3,tnetf4,tnetf5,tnetf6,tnetf7,tnetf8,tnetf9,tnetf10,tnetf11,tnetf12)
  z4  <- rbindlist(list(z4,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)
  
  #weight$ntflowtz04 <- datas1[,1] 
  
  
  # ######################### ZONE 5##################################
  
  
  netf1 <- netflow0116[i,seq(6, ncol(netflow0116), 8), ]
  netf2 <- netflow0216[i,seq(6, ncol(netflow0216), 8), ]
  netf3 <- netflow0316[i,seq(6, ncol(netflow0316), 8), ]
  netf4 <- netflow0416[i,seq(6, ncol(netflow0416), 8), ]
  netf5 <- netflow0516[i,seq(6, ncol(netflow0516), 8), ]
  netf6 <- netflow0616[i,seq(6, ncol(netflow0616), 8), ]
  netf7 <- netflow0716[i,seq(6, ncol(netflow0716), 8), ]
  netf8 <- netflow0816[i,seq(6, ncol(netflow0816), 8), ]
  netf9 <- netflow0916[i,seq(6, ncol(netflow0916), 8), ]
  netf10 <- netflow1016[i,seq(6, ncol(netflow1016), 8), ]
  netf11 <- netflow1116[i,seq(6, ncol(netflow1116), 8), ]
  netf12 <- netflow1216[i,seq(6, ncol(netflow1216), 8), ]
  
  
  tnetf1 <- as.data.frame(t(netf1))
  tnetf2 <- as.data.frame(t(netf2))
  tnetf3 <- as.data.frame(t(netf3))
  tnetf4 <- as.data.frame(t(netf4))
  tnetf5 <- as.data.frame(t(netf5))
  tnetf6 <- as.data.frame(t(netf6))
  tnetf7 <- as.data.frame(t(netf7))
  tnetf8 <- as.data.frame(t(netf8))
  tnetf9 <- as.data.frame(t(netf9))
  tnetf10 <- as.data.frame(t(netf10))
  tnetf11 <- as.data.frame(t(netf11))
  tnetf12 <- as.data.frame(t(netf12))
  
  datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3,tnetf4,tnetf5,tnetf6,tnetf7,tnetf8,tnetf9,tnetf10,tnetf11,tnetf12)
  
  z5  <- rbindlist(list(z5,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)
  #weight$ntflowtz05 <- datas1[,1] 
  
  ################################# ZONE 6  ########################################
  
  
  netf1 <- netflow0116[i,seq(7, ncol(netflow0116), 8), ]
  netf2 <- netflow0216[i,seq(7, ncol(netflow0216), 8), ]
  netf3 <- netflow0316[i,seq(7, ncol(netflow0316), 8), ]
  netf4 <- netflow0416[i,seq(7, ncol(netflow0416), 8), ]
  netf5 <- netflow0516[i,seq(7, ncol(netflow0516), 8), ]
  netf6 <- netflow0616[i,seq(7, ncol(netflow0616), 8), ]
  netf7 <- netflow0716[i,seq(7, ncol(netflow0716), 8), ]
  netf8 <- netflow0816[i,seq(7, ncol(netflow0816), 8), ]
  netf9 <- netflow0916[i,seq(7, ncol(netflow0916), 8), ]
  netf10 <- netflow1016[i,seq(7, ncol(netflow1016), 8), ]
  netf11 <- netflow1116[i,seq(7, ncol(netflow1116), 8), ]
  netf12 <- netflow1216[i,seq(7, ncol(netflow1216), 8), ]
  
  
  tnetf1 <- as.data.frame(t(netf1))
  tnetf2 <- as.data.frame(t(netf2))
  tnetf3 <- as.data.frame(t(netf3))
  tnetf4 <- as.data.frame(t(netf4))
  tnetf5 <- as.data.frame(t(netf5))
  tnetf6 <- as.data.frame(t(netf6))
  tnetf7 <- as.data.frame(t(netf7))
  tnetf8 <- as.data.frame(t(netf8))
  tnetf9 <- as.data.frame(t(netf9))
  tnetf10 <- as.data.frame(t(netf10))
  tnetf11 <- as.data.frame(t(netf11))
  tnetf12 <- as.data.frame(t(netf12))
  
  datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3,tnetf4,tnetf5,tnetf6,tnetf7,tnetf8,tnetf9,tnetf10,tnetf11,tnetf12)
  z6  <- rbindlist(list(z6,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)
  
  
  #weight$ntflowtz06 <- datas1[,1] 
  
  ############################ ZOne 7 ###################################3
  
  
  netf1 <- netflow0116[i,seq(8, ncol(netflow0116), 8), ]
  netf2 <- netflow0216[i,seq(8, ncol(netflow0216), 8), ]
  netf3 <- netflow0316[i,seq(8, ncol(netflow0316), 8), ]
  netf4 <- netflow0416[i,seq(8, ncol(netflow0416), 8), ]
  netf5 <- netflow0516[i,seq(8, ncol(netflow0516), 8), ]
  netf6 <- netflow0616[i,seq(8, ncol(netflow0616), 8), ]
  netf7 <- netflow0716[i,seq(8, ncol(netflow0716), 8), ]
  netf8 <- netflow0816[i,seq(8, ncol(netflow0816), 8), ]
  netf9 <- netflow0916[i,seq(8, ncol(netflow0916), 8), ]
  netf10 <- netflow1016[i,seq(8, ncol(netflow1016), 8), ]
  netf11 <- netflow1116[i,seq(8, ncol(netflow1116), 8), ]
  netf12 <- netflow1216[i,seq(8, ncol(netflow1216), 8), ]
  
  
  tnetf1 <- as.data.frame(t(netf1))
  tnetf2 <- as.data.frame(t(netf2))
  tnetf3 <- as.data.frame(t(netf3))
  tnetf4 <- as.data.frame(t(netf4))
  tnetf5 <- as.data.frame(t(netf5))
  tnetf6 <- as.data.frame(t(netf6))
  tnetf7 <- as.data.frame(t(netf7))
  tnetf8 <- as.data.frame(t(netf8))
  tnetf9 <- as.data.frame(t(netf9))
  tnetf10 <- as.data.frame(t(netf10))
  tnetf11 <- as.data.frame(t(netf11))
  tnetf12 <- as.data.frame(t(netf12))
  
  datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3,tnetf4,tnetf5,tnetf6,tnetf7,tnetf8,tnetf9,tnetf10,tnetf11,tnetf12)
  z7  <- rbindlist(list(z7,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)
  
  #weight$ntflowtz07 <- datas1[,1] 
  
  ################################## ZONE 8  #############################################
  
  
  netf1 <- netflow0116[i,seq(9, ncol(netflow0116), 8), ]
  netf2 <- netflow0216[i,seq(9, ncol(netflow0216), 8), ]
  netf3 <- netflow0316[i,seq(9, ncol(netflow0316), 8), ]
  netf4 <- netflow0416[i,seq(9, ncol(netflow0416), 8), ]
  netf5 <- netflow0516[i,seq(9, ncol(netflow0516), 8), ]
  netf6 <- netflow0616[i,seq(9, ncol(netflow0616), 8), ]
  netf7 <- netflow0716[i,seq(9, ncol(netflow0716), 8), ]
  netf8 <- netflow0816[i,seq(9, ncol(netflow0816), 8), ]
  netf9 <- netflow0916[i,seq(9, ncol(netflow0916), 8), ]
  netf10 <- netflow1016[i,seq(9, ncol(netflow1016), 8), ]
  netf11 <- netflow1116[i,seq(9, ncol(netflow1116), 8), ]
  netf12 <- netflow1216[i,seq(9, ncol(netflow1216), 8), ]
  
  
  tnetf1 <- as.data.frame(t(netf1))
  tnetf2 <- as.data.frame(t(netf2))
  tnetf3 <- as.data.frame(t(netf3))
  tnetf4 <- as.data.frame(t(netf4))
  tnetf5 <- as.data.frame(t(netf5))
  tnetf6 <- as.data.frame(t(netf6))
  tnetf7 <- as.data.frame(t(netf7))
  tnetf8 <- as.data.frame(t(netf8))
  tnetf9 <- as.data.frame(t(netf9))
  tnetf10 <- as.data.frame(t(netf10))
  tnetf11 <- as.data.frame(t(netf11))
  tnetf12 <- as.data.frame(t(netf12))
  
  datas1  <- rbind.fill(tnetf1, tnetf2, tnetf3,tnetf4,tnetf5,tnetf6,tnetf7,tnetf8,tnetf9,tnetf10,tnetf11,tnetf12)
  #weight$ntflowtz08 <- datas1[,1] 
  z8  <- rbindlist(list(z8,datas1),use.names = FALSE, fill = FALSE, idcol = FALSE)
  ###################################################
  
}
a <- seq(1,811,1)
a <- as.data.frame(a)
a <- rep(row.names(a),each = 365)
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

weight2017 <- weight

#write.csv(weight, "72weight2017.csv", row.names = FALSE)
