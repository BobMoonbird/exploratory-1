#plot2


course = read.csv("./household_power_consumption.txt", sep = ";")

course$Date = as.Date(course$Date, "%d/%m/%Y")

short_crs = subset(course, Date == "2007-02-01"| Date == "2007-02-02")

short_crs[,3] = as.numeric(paste(short_crs[,3]))

#short_crs[,10]  = weekdays(short_crs$Date)

png(filename = "plot_2.png")


plot(short_crs$Global_active_power, type = "l", ylab = "Global Acive Power")

dev.off()