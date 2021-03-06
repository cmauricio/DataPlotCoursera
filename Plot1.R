## Data asignment for the Data Scientist Course in Coursera
## Developed by Carlos Mauricio Casta�o D�az
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
hist(ExperimentalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency") ## Creates the histogram of the power use by days 
dev.copy(png, file = "plot1.png") ## Creates the PNG file
dev.off() ## Closes the device


detach(ExperimentalData)











