> setwd("E:/Coursera/Data Science/Exploratory Data Analysis")
> dir()
[1]"household_power_consumption.txt"     
> files <- file("household_power_consumption.txt")
> household <- read.table(text = grep("^[1,2]/2/2007",readLines(files),value = TRUE),sep = ';',col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), na.strings = '?')
> with(household,hist(Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power", col="red"))
> dev.copy(png, file="plot1.png")
> dev.off()
