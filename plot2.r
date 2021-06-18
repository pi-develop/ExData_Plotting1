energy2<-read.table(text = grep("^[1,2]/2/2007", readLines("C:\\Users\\(username)\\Desktop\\Rcoursera\\exdata_data_household_power_consumption\\household_power_consumption.txt"), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
energydate<- as.POSIXct(paste(energy2$Date, energy2$Time), format = "%d/%m/%Y %H:%M:%S")
plot(x=energydate, y=energy2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
