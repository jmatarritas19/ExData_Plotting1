## Loading the large dataset.

setwd("C:\\Users\\X201\\Dropbox\\ExploratoryDataAnalysis")

data <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",colClasses = c("character", "character", rep("numeric",7)),na = "?")

dim(data) # 2075259 9

attach(data)

## Only need data of 2 days.

subset <- Date == "1/2/2007" | Date == "2/2/2007"

newData <- data[subset, ]

attach(newData)
x <- paste(Date, Time)

newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10

attach(newData)
