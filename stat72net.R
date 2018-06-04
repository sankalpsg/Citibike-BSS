
net2016 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2016.csv")
net2017 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2017.csv")
net2018 <- read.csv("C:/Users/Sankalp/Desktop/DataScience Trinity/Dissertation/Mimi Zhang Files/CitiBike/CitiBike/72weight2018.csv")


st72net  <- rbind.fill(net2016,net2017,net2018)

write.csv(st72net, "stat72net.csv", row.names = FALSE)
