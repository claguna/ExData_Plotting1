loadData <- function()
{
	data <- read.table(pipe('egrep "(^[1,2]/2/2007)" household_power_consumption.txt'), header = FALSE,
                   sep = ";", na.strings = "?", 
                   col.names = c("Date", "Time", "Gap","Grp", "voltage", "GlobalI", "SubMet1", "SubMet2", "SubMet3")) 

	data$DateTime <- strptime(paste(data$Date, data$Time), 
	                          format="%d/%m/%Y %H:%M:%S")
	data
}