data <- read.table("~/Downloads/household_power_consumption.txt",header=T,sep=";",na.strings="?",stringsAsFactors=F)
data <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
png("plot1.png",width = 480, height = 480)
hist(data$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kiliowatts)")
dev.off()

