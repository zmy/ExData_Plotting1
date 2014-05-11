source("load.R")
png("plot3.png")
with(data, plot(Stamp, Sub_metering_1,
                xlab="", ylab="Energy sub metering",
                type="n"))
with(data, {
  lines(Stamp, Sub_metering_1, type="l", col="black")
  lines(Stamp, Sub_metering_2, type="l", col="red")
  lines(Stamp, Sub_metering_3, type="l", col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         lty=c(1,1),
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
dev.off()