data <- read.table("~/Downloads/household_power_consumption.txt",header=T,sep=";",na.strings="?",stringsAsFactors=F)
data <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
png("plot2.png",width = 480, height = 480)
plot(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Global_active_power,type='n',xlab="",ylab="Global Active Power (kiliowatts)")
lines(strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S"),data$Global_active_power,type='l')
dev.off()

