data <- read.csv2('household_power_consumption.txt',na.strings = "?",dec=".")
data <- transform(data, Time = strptime(paste(Date,Time),format="%d/%m/%Y %T"))
data <- transform(data, Date = as.Date(Date,format="%d/%m/%Y"))

png(filename = "plot3.png",width = 480, height = 480)
with(subset(data,Date %in% c(as.Date("2007-02-01"),as.Date("2007-02-02"))),
{
 plot(Time,Sub_metering_1,type="l",xlab="", ylab="Energy sub metering")
 lines(Time,Sub_metering_2,col="red")
 lines(Time,Sub_metering_3,col="blue")
 legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c("black", "red", "blue"))
}
)
dev.off()
