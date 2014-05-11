source("load.R")
png("plot4.png")
par(mfrow = c(2, 2))
with(data, {
  plot(Stamp, Global_active_power,
       xlab="", ylab="Global Active Power", type="n")
  lines(Stamp, Global_active_power, type="l")
  plot(Stamp, Voltage,
       xlab="datetime", ylab="Voltage", type="n")
  lines(Stamp, Voltage, type="l")
  plot(Stamp, Sub_metering_1,
       xlab="", ylab="Energy sub metering",
       type="n")
  lines(Stamp, Sub_metering_1, type="l", col="black")
  lines(Stamp, Sub_metering_2, type="l", col="red")
  lines(Stamp, Sub_metering_3, type="l", col="blue")
  legend("topright", bty="n",
         col=c("black", "red", "blue"),
         lty=c(1,1),
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Stamp, Global_reactive_power, xlab="datetime", type="n")
  lines(Stamp, Global_reactive_power, type="l")
})
dev.off()