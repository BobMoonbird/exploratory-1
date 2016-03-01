#plot1

course = read.csv("./household_power_consumption.txt", sep = ";")

course$Date = as.Date(course$Date, "%d/%m/%Y")

short_crs = subset(course, Date == "2007-02-01"| Date == "2007-02-02")

short_crs[,3] = as.numeric(paste(short_crs[,3]))

#short_crs[,10]  = weekdays(short_crs$Date)

png(filename = "plot_1.png")

hist(short_crs$Global_active_power, col = "red", border = "black", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()