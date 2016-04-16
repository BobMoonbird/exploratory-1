#plot2


course = read.csv("./household_power_consumption.txt", sep = ";")

date_time = paste(course$Date, course$Time)

course = cbind(course, strptime(date_time, "%d/%m/%Y %H:%M:%S"))

names(course)[10] = "date.and.time"

course$Date = as.Date(course$Date, "%d/%m/%Y")

short_crs = subset(course, Date == "2007-02-01"| Date == "2007-02-02")

short_crs[,3] = as.numeric(paste(short_crs[,3]))

png(filename = "plot_2.png")


plot(short_crs$date.and.time, short_crs$Global_active_power, type = "l", ylab = "Global Acive Power", xlab = " ")

dev.off()

