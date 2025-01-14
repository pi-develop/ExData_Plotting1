energy <- read.table(text = grep("^[1,2]/2/2007", readLines("C:\\Users\\(user name)\\Desktop\\Rcoursera\\exdata_data_household_power_consumption\\household_power_consumption.txt"), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
energy2<-read.table(text = grep("^[1,2]/2/2007", readLines("C:\\Users\\(user name)\\Desktop\\Rcoursera\\exdata_data_household_power_consumption\\household_power_consumption.txt"), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
energydate<- as.POSIXct(paste(energy2$Date, energy2$Time), format = "%d/%m/%Y %H:%M:%S")
old.par<-par(mfrow=c(2,2))
hist(energy$Global_active_power,main="Global Active Power",xlab="Global Active Power(Kilowatts)", ylim=c(0,1400),col="Red")
plot(x=energydate, y=energy2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(x=energydate, y=energy2$Sub_metering_1, type="l", xlab="",ylab="Energy Sub Metering")
lines(x=energydate,y=energy2$Sub_metering_2,col="Red")
lines(x=energydate,y=energy2$Sub_metering_3,col="Blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("Black","Red","Blue"),lty=1,cex=0.5,bty="n")
plot(x=energydate, y=energy2$Global_reactive_power, type="l", xlab="",ylab="Global Reactive Power")
par(old.par)
