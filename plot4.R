#plot4


course = read.csv("./household_power_consumption.txt", sep = ";")

course$Date = as.Date(course$Date, "%d/%m/%Y")

short_crs = subset(course, Date == "2007-02-01"| Date == "2007-02-02")

short_crs[,3] = as.numeric(paste(short_crs[,3]))
short_crs[,4] = as.numeric(paste(short_crs[,4]))
short_crs[,5] = as.numeric(paste(short_crs[,5]))
short_crs[,7] = as.numeric(paste(short_crs[,7]))
short_crs[,8] = as.numeric(paste(short_crs[,8]))
short_crs[,9] = as.numeric(paste(short_crs[,9]))

#short_crs[,10]  = weekdays(short_crs$Date)

png(filename = "plot_4.png")


par(mfrow=c(2,2))

plot(short_crs$Global_active_power, type = "l", ylab = "Global Acive Power")

plot(short_crs$Voltage, type = "l", ylab = "Voltage")

plot(short_crs$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering")
lines(short_crs$Sub_metering_2, col = "red")
lines (short_crs$Sub_metering_3, col = "blue")

plot(short_crs$Global_reactive_power, type = "l", ylab = "Global_reactive_power")

dev.off()