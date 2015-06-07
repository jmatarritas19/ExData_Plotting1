##Plot2.R

if (!"LoadData.R" %in% list.files()) {
  setwd("C:\\Users\\X201\\Dropbox\\ExploratoryDataAnalysis")
} 
source("LoadData.R")

png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
