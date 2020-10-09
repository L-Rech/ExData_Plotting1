#plot1
all<- read.table("household_power_consumption.txt", header = TRUE,sep = ";", 
                  na.strings = "?")


timedata<-subset(all, all$Date == "1/2/2007" | all$Date == "2/2/2007")

png("ExData_Plotting1/plot1.png", width = 480, height = 480, units = "px")
hist(timedata$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()