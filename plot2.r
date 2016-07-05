#setwd("C:/Users/dkvandyke/Source/Repos/701_TrainingDatasets/proj4_1/ExData_Plotting1")
household_power_consumption <- read.csv("N:/SHC/8_GIS_Custom/1_StartingPlaces/power/household_power_consumption.txt", sep=";")

pow <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")

rm(household_power_consumption)

pow$GAP <- as.numeric(as.character(pow$Global_active_power))

pow$DTSTring <- paste(pow$Date, pow$Time)

pow$DTf <- strptime(pow$DTSTring, format = "%d/%m/%Y %H:%M:%S")

plot(pow$DTf, pow$GAP, type = "l")
png("plot2.png")

par(mfrow = c(1,1))

plot(pow$DTf, pow$GAP, type = "l")

dev.off()
