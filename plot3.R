#plot3
all<- read.table("household_power_consumption.txt", header = TRUE,sep = ";", 
                 na.strings = "?")


timedata<-subset(all, all$Date == "1/2/2007" | all$Date == "2/2/2007")
timedur<-strptime(paste(timedata$Date, timedata$Time), "%d/%m/%Y %H:%M:%S")

png("ExData_Plotting1/plot3.png", width = 480, height = 480, units = "px")
plot(timedur, timedata$Sub_metering_1, type = "n", xlab = "",
     ylab="Energy sub metering")
lines(timedur, timedata$Sub_metering_1, type = "l", col="black")
lines(timedur, timedata$Sub_metering_2, type = "l", col="red")
lines(timedur, timedata$Sub_metering_3, type = "l", col="blue")
legend("topright", col=c("black","red","blue"),lty = 1, legend = c("Sub_metering_1",
                                                           "Sub_metering_2",
                                                           "Sub_metering_3"))
dev.off()