path <- 'C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/'
setwd(path)



#Importing the dataset

daily<-read.csv("Daily(1504-1803).csv")

View(daily)
hourly <-read.csv("Hourly.csv")

######################## NETFLOW #################################################

dropoff0116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201601-DropOff.csv")
pickup0116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201601-PickUp.csv")

z0116 <- names(dropoff0116)[-1]
netflow0116 <- cbind(dropoff0116[1], dropoff0116[z] - pickup0116[match(dropoff0116$Station_ID, pickup0116$Station_ID), z0116])

#----------------

dropoff0216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201602-DropOff.csv")
pickup0216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201602-PickUp.csv")

z0216 <- names(dropoff0216)[-1]
netflow0216 <- cbind(dropoff0216[1], dropoff0216[z0216] - pickup0216[match(dropoff0216$Station_ID, pickup0216$Station_ID), z0216])

#--------------------
dropoff0316 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201603-DropOff.csv")
pickup0316 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201603-PickUp.csv")

z0316 <- names(dropoff0316)[-1]
netflow0316 <- cbind(dropoff0316[1], dropoff0316[z0316] - pickup0316[match(dropoff0316$Station_ID, pickup0316$Station_ID), z0316])

#-------------------------------

dropoff0416 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201604-DropOff.csv")
pickup0416 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201604-PickUp.csv")

z0416 <- names(dropoff0416)[-1]
netflow0416 <- cbind(dropoff0416[1], dropoff0416[z0416] - pickup0416[match(dropoff0416$Station_ID, pickup0416$Station_ID), z0416])

#---------------------------

dropoff0516 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201605-DropOff.csv")
pickup0516 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201605-PickUp.csv")

z0516 <- names(dropoff0516)[-1]
netflow0516 <- cbind(dropoff0516[1], dropoff0516[z0516] - pickup0516[match(dropoff0516$Station_ID, pickup0516$Station_ID), z0516])


#-------------------------------

dropoff0616 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201606-DropOff.csv")
pickup0616 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201606-PickUp.csv")

z0616 <- names(dropoff0616)[-1]
netflow0616 <- cbind(dropoff0616[1], dropoff0616[z0616] - pickup0616[match(dropoff0616$Station_ID, pickup0616$Station_ID), z0616])

#---------------------------
#-------------------------------

dropoff0716 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201607-DropOff.csv")
pickup0716 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201607-PickUp.csv")

z0716 <- names(dropoff0716)[-1]
netflow0716 <- cbind(dropoff0716[1], dropoff0716[z0716] - pickup0716[match(dropoff0716$Station_ID, pickup0716$Station_ID), z0716])

#---------------------------

#-------------------------------

dropoff0816 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201608-DropOff.csv")
pickup0816 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201608-PickUp.csv")

z0816 <- names(dropoff0816)[-1]
netflow0816 <- cbind(dropoff0816[1], dropoff0816[z0816] - pickup0816[match(dropoff0816$Station_ID, pickup0816$Station_ID), z0816])

#---------------------------

#-------------------------------

dropoff0916 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201609-DropOff.csv")
pickup0916 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201609-PickUp.csv")

z0916 <- names(dropoff0916)[-1]
netflow0916 <- cbind(dropoff0916[1], dropoff0916[z0916] - pickup0916[match(dropoff0916$Station_ID, pickup0916$Station_ID), z0916])

#---------------------------


#-------------------------------

dropoff1016 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201610-DropOff.csv")
pickup1016 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201610-PickUp.csv")

z1016 <- names(dropoff1016)[-1]
netflow1016 <- cbind(dropoff1016[1], dropoff1016[z1016] - pickup1016[match(dropoff1016$Station_ID, pickup1016$Station_ID), z1016])

#---------------------------


#-------------------------------

dropoff1116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201611-DropOff.csv")
pickup1116 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201611-PickUp.csv")

z1116 <- names(dropoff1116)[-1]
netflow1116 <- cbind(dropoff1116[1], dropoff1116[z1116] - pickup1116[match(dropoff1116$Station_ID, pickup1116$Station_ID), z1116])

#---------------------------


#-------------------------------

dropoff1216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201612-DropOff.csv")
pickup1216 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/Flow-Delta/201612-PickUp.csv")

z1216 <- names(dropoff1216)[-1]
netflow1216 <- cbind(dropoff1216[1], dropoff1216[z1216] - pickup1216[match(dropoff1216$Station_ID, pickup1216$Station_ID), z1216])

#---------------------------





###################### Station Distance Matrix #######################################3

final <- merge(stationLoc,data,by.x="station_id",by.y="StationID")
final1<- final[,c(1,2,3)]

####################################################################

distMatr <- GeoDistanceInMetresMatrix(final1)
targetPath <- "C:/Users/Sankalp/Desktop"
write.matrix(format(distMatr, scientific=FALSE), 
             file = paste(targetpath, "test.csv", sep="/"),sep=',')

write.table(distMatr,file="test.txt") # keeps the rownames


ReplaceLowerOrUpperTriangle <- function(m, triangle.to.replace){
  # If triangle.to.replace="lower", replaces the lower triangle of a square matrix with its upper triangle.
  # If triangle.to.replace="upper", replaces the upper triangle of a square matrix with its lower triangle.
  
  if (nrow(m) != ncol(m)) stop("Supplied matrix must be square.")
  if      (tolower(triangle.to.replace) == "lower") tri <- lower.tri(m)
  else if (tolower(triangle.to.replace) == "upper") tri <- upper.tri(m)
  else stop("triangle.to.replace must be set to 'lower' or 'upper'.")
  m[tri] <- t(m)[tri]
  return(m)
}

GeoDistanceInMetresMatrix <- function(df.geopoints){
  # Returns a matrix (M) of distances between geographic points.
  # M[i,j] = M[j,i] = Distance between (df.geopoints$lat[i], df.geopoints$lon[i]) and
  # (df.geopoints$lat[j], df.geopoints$lon[j]).
  # The row and column names are given by df.geopoints$name.
  
  GeoDistanceInMetres <- function(g1, g2){
    # Returns a vector of distances. (But if g1$index > g2$index, returns zero.)
    # The 1st value in the returned vector is the distance between g1[[1]] and g2[[1]].
    # The 2nd value in the returned vector is the distance between g1[[2]] and g2[[2]]. Etc.
    # Each g1[[x]] or g2[[x]] must be a list with named elements "index", "lat" and "lon".
    # E.g. g1 <- list(list("index"=1, "lat"=12.1, "lon"=10.1), list("index"=3, "lat"=12.1, "lon"=13.2))
    DistM <- function(g1, g2){
      require("Imap")
      return(ifelse(g1$index > g2$index, 0, gdist(lat.1=g1$lat, lon.1=g1$lon, lat.2=g2$lat, lon.2=g2$lon, units="m")))
    }
    return(mapply(DistM, g1, g2))
  }
  
  n.geopoints <- nrow(df.geopoints)
  
  # The index column is used to ensure we only do calculations for the upper triangle of points
  df.geopoints$index <- 1:n.geopoints
  
  # Create a list of lists
  list.geopoints <- by(df.geopoints[,c("index", "lat", "lon")], 1:n.geopoints, function(x){return(list(x))})
  
  # Get a matrix of distances (in metres)
  mat.distances <- ReplaceLowerOrUpperTriangle(outer(list.geopoints, list.geopoints, GeoDistanceInMetres), "lower")
  
  # Set the row and column names
  rownames(mat.distances) <- df.geopoints$name
  colnames(mat.distances) <- df.geopoints$name
  
  return(mat.distances)
}

############################################################################################



dat2 <- seq(as.Date('2016-01-01'),as.Date('2016-12-31'),by = 1)

weight <- as.data.frame.Date(dat2)

weight$day <- weekdays(as.Date(weight$dat2))
weight$month <- months(as.Date(weight$dat2))
file <- "C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/USBankHolidays.txt"
holidays <- read.table(file, header = FALSE, sep = ",")
holidays$V2 <- as.Date(holidays$V2)

weight$holiday <- ifelse(weight$dat2 %in% holidays$V2, 1, 0) 
#weight$holiday1 <- ifelse(weight$day %in% c('Saturday','Sunday'), 1, 0)

  
netf1 <- netflow0116[1,seq(2, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(2, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(2, ncol(netflow0316), 8), ]
netf4 <- netflow0416[1,seq(2, ncol(netflow0416), 8), ]
netf5 <- netflow0516[1,seq(2, ncol(netflow0516), 8), ]
netf6 <- netflow0616[1,seq(2, ncol(netflow0616), 8), ]
netf7 <- netflow0716[1,seq(2, ncol(netflow0716), 8), ]
netf8 <- netflow0816[1,seq(2, ncol(netflow0816), 8), ]
netf9 <- netflow0916[1,seq(2, ncol(netflow0916), 8), ]
netf10 <- netflow1016[1,seq(2, ncol(netflow1016), 8), ]
netf11 <- netflow1116[1,seq(2, ncol(netflow1116), 8), ]
netf12 <- netflow1216[1,seq(2, ncol(netflow1216), 8), ]


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
datas1$date <- seq(as.Date('2016-01-01'),as.Date('2016-12-31'),by = 1)

################################################# ZONE 2

netf1 <- netflow0116[1,seq(3, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(3, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(3, ncol(netflow0316), 8), ]
netf4 <- netflow0416[1,seq(3, ncol(netflow0416), 8), ]
netf5 <- netflow0516[1,seq(3, ncol(netflow0516), 8), ]
netf6 <- netflow0616[1,seq(3, ncol(netflow0616), 8), ]
netf7 <- netflow0716[1,seq(3, ncol(netflow0716), 8), ]
netf8 <- netflow0816[1,seq(3, ncol(netflow0816), 8), ]
netf9 <- netflow0916[1,seq(3, ncol(netflow0916), 8), ]
netf10 <- netflow1016[1,seq(3, ncol(netflow1016), 8), ]
netf11 <- netflow1116[1,seq(3, ncol(netflow1116), 8), ]
netf12 <- netflow1216[1,seq(3, ncol(netflow1216), 8), ]


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
weight$ntflowtz02 <- datas1[,1] 

#################### ZOne 3 ###########################################


netf1 <- netflow0116[1,seq(4, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(4, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(4, ncol(netflow0316), 8), ]
netf4 <- netflow0416[1,seq(4, ncol(netflow0416), 8), ]
netf5 <- netflow0516[1,seq(4, ncol(netflow0516), 8), ]
netf6 <- netflow0616[1,seq(4, ncol(netflow0616), 8), ]
netf7 <- netflow0716[1,seq(4, ncol(netflow0716), 8), ]
netf8 <- netflow0816[1,seq(4, ncol(netflow0816), 8), ]
netf9 <- netflow0916[1,seq(4, ncol(netflow0916), 8), ]
netf10 <- netflow1016[1,seq(4, ncol(netflow1016), 8), ]
netf11 <- netflow1116[1,seq(4, ncol(netflow1116), 8), ]
netf12 <- netflow1216[1,seq(4, ncol(netflow1216), 8), ]


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
weight$ntflowtz03 <- datas1[,1] 

################ ZOne 4 ###########################################


netf1 <- netflow0116[1,seq(5, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(5, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(5, ncol(netflow0316), 8), ]
netf4 <- netflow0416[1,seq(5, ncol(netflow0416), 8), ]
netf5 <- netflow0516[1,seq(5, ncol(netflow0516), 8), ]
netf6 <- netflow0616[1,seq(5, ncol(netflow0616), 8), ]
netf7 <- netflow0716[1,seq(5, ncol(netflow0716), 8), ]
netf8 <- netflow0816[1,seq(5, ncol(netflow0816), 8), ]
netf9 <- netflow0916[1,seq(5, ncol(netflow0916), 8), ]
netf10 <- netflow1016[1,seq(5, ncol(netflow1016), 8), ]
netf11 <- netflow1116[1,seq(5, ncol(netflow1116), 8), ]
netf12 <- netflow1216[1,seq(5, ncol(netflow1216), 8), ]


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
weight$ntflowtz04 <- datas1[,1] 


# ######################### ZONE 5##################################


netf1 <- netflow0116[1,seq(6, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(6, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(6, ncol(netflow0316), 8), ]
netf4 <- netflow0416[1,seq(6, ncol(netflow0416), 8), ]
netf5 <- netflow0516[1,seq(6, ncol(netflow0516), 8), ]
netf6 <- netflow0616[1,seq(6, ncol(netflow0616), 8), ]
netf7 <- netflow0716[1,seq(6, ncol(netflow0716), 8), ]
netf8 <- netflow0816[1,seq(6, ncol(netflow0816), 8), ]
netf9 <- netflow0916[1,seq(6, ncol(netflow0916), 8), ]
netf10 <- netflow1016[1,seq(6, ncol(netflow1016), 8), ]
netf11 <- netflow1116[1,seq(6, ncol(netflow1116), 8), ]
netf12 <- netflow1216[1,seq(6, ncol(netflow1216), 8), ]


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
weight$ntflowtz05 <- datas1[,1] 

################################# ZONE 6########################################


netf1 <- netflow0116[1,seq(7, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(7, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(7, ncol(netflow0316), 8), ]
netf4 <- netflow0416[1,seq(7, ncol(netflow0416), 8), ]
netf5 <- netflow0516[1,seq(7, ncol(netflow0516), 8), ]
netf6 <- netflow0616[1,seq(7, ncol(netflow0616), 8), ]
netf7 <- netflow0716[1,seq(7, ncol(netflow0716), 8), ]
netf8 <- netflow0816[1,seq(7, ncol(netflow0816), 8), ]
netf9 <- netflow0916[1,seq(7, ncol(netflow0916), 8), ]
netf10 <- netflow1016[1,seq(7, ncol(netflow1016), 8), ]
netf11 <- netflow1116[1,seq(7, ncol(netflow1116), 8), ]
netf12 <- netflow1216[1,seq(7, ncol(netflow1216), 8), ]


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
weight$ntflowtz06 <- datas1[,1] 

############################ ZOne 7 ###################################3


netf1 <- netflow0116[1,seq(8, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(8, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(8, ncol(netflow0316), 8), ]
netf4 <- netflow0416[1,seq(8, ncol(netflow0416), 8), ]
netf5 <- netflow0516[1,seq(8, ncol(netflow0516), 8), ]
netf6 <- netflow0616[1,seq(8, ncol(netflow0616), 8), ]
netf7 <- netflow0716[1,seq(8, ncol(netflow0716), 8), ]
netf8 <- netflow0816[1,seq(8, ncol(netflow0816), 8), ]
netf9 <- netflow0916[1,seq(8, ncol(netflow0916), 8), ]
netf10 <- netflow1016[1,seq(8, ncol(netflow1016), 8), ]
netf11 <- netflow1116[1,seq(8, ncol(netflow1116), 8), ]
netf12 <- netflow1216[1,seq(8, ncol(netflow1216), 8), ]


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
weight$ntflowtz07 <- datas1[,1] 

################################## ZONE 8#############################################


netf1 <- netflow0116[1,seq(9, ncol(netflow0116), 8), ]
netf2 <- netflow0216[1,seq(9, ncol(netflow0216), 8), ]
netf3 <- netflow0316[1,seq(9, ncol(netflow0316), 8), ]
netf4 <- netflow0416[1,seq(9, ncol(netflow0416), 8), ]
netf5 <- netflow0516[1,seq(9, ncol(netflow0516), 8), ]
netf6 <- netflow0616[1,seq(9, ncol(netflow0616), 8), ]
netf7 <- netflow0716[1,seq(9, ncol(netflow0716), 8), ]
netf8 <- netflow0816[1,seq(9, ncol(netflow0816), 8), ]
netf9 <- netflow0916[1,seq(9, ncol(netflow0916), 8), ]
netf10 <- netflow1016[1,seq(9, ncol(netflow1016), 8), ]
netf11 <- netflow1116[1,seq(9, ncol(netflow1116), 8), ]
netf12 <- netflow1216[1,seq(9, ncol(netflow1216), 8), ]


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
weight$ntflowtz08 <- datas1[,1] 

###################################################
weight$stationID <- 72
weight <- weight[,c(1:4,13,5:12)]

