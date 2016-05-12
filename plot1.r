setwd("N:/SHC/8_GIS_Custom/1_StartingPlaces/power")
household_power_consumption <- read.csv("N:/SHC/8_GIS_Custom/1_StartingPlaces/power/household_power_consumption.txt", sep=";")

pow <- subset(household_power_consumption, Date == "2/1/2007" | Date == "2/2/2007")

pow$GAP <- as.numeric(as.character(pow$Global_active_power))

png("plot1.png")

par(mfrow = c(1,1))

dev.off()
