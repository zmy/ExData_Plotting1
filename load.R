data <- read.csv("household_power_consumption.txt",
                 sep=";", na.strings="?",
                 colClasses=c(rep("character",2), rep("numeric",7)))

data <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]

data$Stamp <- strptime(paste(data$Date, data$Time, sep=" "),
                       format="%d/%m/%Y %H:%M:%S")
