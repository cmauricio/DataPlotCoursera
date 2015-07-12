## Data asignment for the Data Scientist Course in Coursera
## Developed by Carlos Mauricio Castaño Díaz
## R version: 3.2.1
## Platform: Windows 7. 64 bit
## RStudio version: 0.99.451

setwd("C:/Users/Mauro/Desktop/RAssignment")  ## Setup work directory
household_power_consumption <- read.csv("C:/Users/Mauro/Desktop/RAssignment/household_power_consumption.txt", sep=";", na.strings="?") ## Import data sheet

attach(household_power_consumption) ##to ease the use of names
Data1207<-subset(household_power_consumption, household_power_consumption$Date=="1/2/2007") ## measurements from the first of february 2007
Data2207<-subset(household_power_consumption, household_power_consumption$Date=="2/2/2007") ## measurements from the second of february 2007
ExperimentalData<-rbind(Data1207,Data2207) ## matix containing the information of the two dates to be analysed
detach (household_power_consumption) ## Ends attach

attach(ExperimentalData)

plot(ExperimentalData$Sub_metering_1,type="l", col = "black") ## Plots Metering 1 as a line graph on black colour
par(new=TRUE) ##adds a new layer to plot on
plot(ExperimentalData$Sub_metering_2, type="l", col= "red", axes=FALSE) ## the axes=false 
par(new=TRUE)
plot(ExperimentalData$Sub_metering_3, type="l", col = "blue", axes = FALSE)

legend("topright", pch = 1, col = c("black", "red", "blue"), legend = c("Metering 1", "Metering 2", "Metering 3"))

dev.copy(png, file = "plot3.png") ## Creates the PNG file
dev.off() ## Closes the device

detach(ExperimentalData)











