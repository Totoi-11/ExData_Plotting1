> setwd("E:/Coursera/Data Science/Exploratory Data Analysis")
> dir()
[1]"household_power_consumption.txt"     
> files <- file("household_power_consumption.txt")
> household <- read.table(text = grep("^[1,2]/2/2007",readLines(files),value = TRUE),sep = ';',col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), na.strings = '?')
> household$Date <- as.Date(household$Date, format = '%d/%m/%Y')
> household$DateTime <- as.POSIXct(paste(household$Date,household$Time))
> Sys.setlocale(category = "LC_ALL", locale = "english")
> plot(household$DateTime,household$Sub_metering_1, xlab = "",ylab = "Energy sub metering",type = "l")
> lines(household$DateTime, household$Sub_metering_2,col="red")
> lines(household$DateTime, household$Sub_metering_3,col="blue")
> legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty = 1, col = c('black','red','blue'))
> dev.copy(png, file="plot3.png")
> dev.off()
