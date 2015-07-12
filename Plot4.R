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

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

with(ExperimentalData, {
  plot(Global_active_power, type = "l", main = "Global Active Power")
  plot(Voltage, type = "l", main = "Voltage")
  plot(ExperimentalData$Sub_metering_1,type="l", col = "black")
  par(new=TRUE)
  plot(ExperimentalData$Sub_metering_2, type="l", col= "red", axes=FALSE) 
  par(new=TRUE)
  plot(ExperimentalData$Sub_metering_3, type="l", col = "blue", axes = FALSE)
  par(new=FALSE)
  plot(Global_reactive_power,type = "l", main = "Global Reactive Power")
  mtext("Plot4", outer = TRUE)
})

dev.copy(png, file = "plot4.png") ## Creates the PNG file
dev.off() ## Closes the device

detach(ExperimentalData)











