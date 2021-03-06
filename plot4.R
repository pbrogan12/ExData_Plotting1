data <- read.table("~/Downloads/household_power_consumption.txt",header=T,sep=";",na.strings="?",stringsAsFactors=F)
data <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
png("plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
plot(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Global_active_power,type='n',ylab="Global Active Power", xlab="")
lines(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Global_active_power,type='l')
plot(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Voltage,type='n',ylab="Voltage", xlab="datetime")
lines(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Voltage,type='l')
plot(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Sub_metering_1,type='n',ylab="Energy sub meeting", xlab="")
points(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Sub_metering_2,type='n')
points(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Sub_metering_3,type='n')
lines(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Sub_metering_1,type='l')
lines(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Sub_metering_2,type='l',col="red")
lines(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Sub_metering_3,type='l',col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1,lwd=1,col=c("black","red","blue"))
plot(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Global_reactive_power,type='n',ylab="Global_reactive_power", xlab="datetime")
lines(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Global_reactive_power,type='l')
dev.off()

