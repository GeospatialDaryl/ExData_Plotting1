setwd("C:/Users/dkvandyke/Source/Repos/701_TrainingDatasets/proj4_1/ExData_Plotting1")
household_power_consumption <- read.csv("N:/SHC/8_GIS_Custom/1_StartingPlaces/power/household_power_consumption.txt", sep=";")

pow <- subset(household_power_consumption, Date == "2/1/2007" | Date == "2/2/2007")

rm(household_power_consumption)

pow$DTSTring <- paste(pow$Date, pow$Time)

pow$DTf <- strptime(pow$DTSTring, format = "%m/%d/%Y %H:%M:%S")

plot(pow$DTf, pow$Sub_metering_3, type = "l", col = "blue")
lines(pow$DTf, pow$Sub_metering_1, type = "l" )
lines(pow$DTf, pow$Sub_metering_2, type = "l", col = "red")


png("plot3.png")

par(mfrow = c(1,1))

plot(pow$DTf, pow$Sub_metering_3, type = "l", col = "blue")
lines(pow$DTf, pow$Sub_metering_1, type = "l" )
lines(pow$DTf, pow$Sub_metering_2, type = "l", col = "red")

dev.off()
