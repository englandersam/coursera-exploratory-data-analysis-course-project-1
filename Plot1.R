setwd("C:/Users/Samuel/Desktop/Coursera/Exploratory Data Analysis/EPC")

#Read & subset Data

FullFile <- "./household_power_consumption.txt"
Rawdata <- read.table(FullFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- Rawdata[Rawdata$Date %in% c("1/2/2007","2/2/2007") ,]


#Plot 1
globalActivePower <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 
