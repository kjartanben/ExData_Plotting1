data <- read.csv2('household_power_consumption.txt',na.strings = "?",dec=".")
data <- transform(data, Time = strptime(paste(Date,Time),format="%d/%m/%Y %T"))
data <- transform(data, Date = as.Date(Date,format="%d/%m/%Y"))

png(filename = "plot1.png",width = 480, height = 480)
with(subset(data,Date %in% c(as.Date("2007-02-01"),as.Date("2007-02-02"))),
{
 hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
}
)
dev.off()

