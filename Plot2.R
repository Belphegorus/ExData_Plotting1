##Plot2
data<- read.table("household_power_consumption.txt",sep=";",header = TRUE)
SubData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(SubData$Date, SubData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png("plot2.png", width=480, height=480)
plot(datetime, as.numeric(SubData$Global_active_power), 
     type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()