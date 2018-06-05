
# net2016 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2016.csv")
# net2017 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2017.csv")
# net2018 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2018.csv")


stnet  <- rbind.fill(weight2016,weight2017,weight2018)

write.csv(stnet, "statnet.csv", row.names = FALSE)
