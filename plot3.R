#plot3


course = read.csv("./household_power_consumption.txt", sep = ";")

course$Date = as.Date(course$Date, "%d/%m/%Y")

short_crs = subset(course, Date == "2007-02-01"| Date == "2007-02-02")


short_crs[,7] = as.numeric(paste(short_crs[,7]))
short_crs[,8] = as.numeric(paste(short_crs[,8]))
short_crs[,9] = as.numeric(paste(short_crs[,9]))

#short_crs[,10]  = weekdays(short_crs$Date)

png(filename = "plot_3.png")


plot(short_crs$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering")
lines(short_crs$Sub_metering_2, col = "red")
lines (short_crs$Sub_metering_3, col = "blue")

dev.off()