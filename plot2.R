source("load.R")
png("plot2.png")
plot(data$Stamp, data$Global_active_power,
     xlab="", ylab="Global Active Power (kilowatts)", type="n")
lines(data$Stamp, data$Global_active_power, type="l")
dev.off()