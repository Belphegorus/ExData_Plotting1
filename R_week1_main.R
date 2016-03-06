file.exists("C:/Users/Денис/Desktop/R/JHU/EX_Data/Assignment 1")
list.files()
data<- read.table("household_power_consumption.txt",sep=";",header = TRUE)
SubData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


##Plot_1

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(as.numeric(SubData$Global_active_power), 
     col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
##Plot_2
