#plot4


course = read.csv("./household_power_consumption.txt", sep = ";")

date_time = paste(course$Date, course$Time)
striped = strptime(date_time, "%d/%m/%Y %H:%M:%S")
course = cbind(course, striped)

course$Date = as.Date(course$Date, "%d/%m/%Y")
short_crs = subset(course, Date == "2007-02-01"| Date == "2007-02-02")

short_crs[,3] = as.numeric(paste(short_crs[,3]))
short_crs[,4] = as.numeric(paste(short_crs[,4]))
short_crs[,5] = as.numeric(paste(short_crs[,5]))
short_crs[,7] = as.numeric(paste(short_crs[,7]))
short_crs[,8] = as.numeric(paste(short_crs[,8]))
short_crs[,9] = as.numeric(paste(short_crs[,9]))

png(filename = "plot_4.png")


par(mfrow=c(2,2))

plot(short_crs$striped, short_crs$Global_active_power, type = "l", ylab = "Global Acive Power", xlab = " ")

plot(short_crs$striped,short_crs$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(short_crs$striped,short_crs$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = " ")
lines(short_crs$striped,short_crs$Sub_metering_2, col = "red")
lines (short_crs$striped,short_crs$Sub_metering_3, col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=2, lty=1)

plot(short_crs$striped, short_crs$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.off()