source("loadData.R")
data <- loadData()

par(mfrow=c(2,2))

plot(data$DateTime, data$Gap, type="l", xlab="", 
     ylab="Global Active Power")

plot(data$DateTime, data$voltage, type="l", xlab="datetime",
     ylab = "Voltage")

plot(data$DateTime, data$SubMet1, type="l", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$SubMet2, type="l", col="red")
lines(data$DateTime, data$SubMet3, type="l", col="blue")
legend("topright", col=c("black","red","blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, xjust=1)

plot(data$DateTime, data$Grp, type="l", ylab = "Global_reactive_power",
     xlab = "datetime")

dev.print(png,"plot4.png", width=480, height=480)
dev.off()

