source("loadData.R")

data <- loadData()

hist(data$Gap, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power(kilowats)")

plot(data$DateTime, data$Gap, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")

dev.print(png, file="plot2.png", width=480, height=480)
dev.off()