#plot2
all<- read.table("household_power_consumption.txt", header = TRUE,sep = ";", 
                 na.strings = "?")


timedata<-subset(all, all$Date == "1/2/2007" | all$Date == "2/2/2007")
timedur<-strptime(paste(timedata$Date, timedata$Time), "%d/%m/%Y %H:%M:%S")

png("ExData_Plotting1/plot2.png", width = 480, height = 480, units = "px")
plot(timedur, timedata$Global_active_power, type = "l", xlab = "",
     ylab="Global Active Power (kilowatts)")
dev.off()