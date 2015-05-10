# Sourcing the household data with only two days of data
source("Household_subset.R")

plot4 <- function(data=NULL)
  {
  if(is.null(data))     data <- load_data()
  #Generating the PNG to be saved as Plot4.PNG
  png("plot4.png", width=400, height=400)
  
  #Creating a multi paneled plot ,with a vector of 2*2 with par(mfrow) function
  par(mfrow=c(2,2))
  
  # 1st chart
  plot(data$Time, data$Global_active_power,type="l",xlab="",ylab="Global Active Power")
  
  # 2nd chart
    plot(data$Time, data$Voltage, type="l",xlab="datetime", ylab="Voltage")
  
  # 3rd chart
  plot(data$Time, data$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  
  lines(data$Time, data$Sub_metering_2, col="red")
  lines(data$Time, data$Sub_metering_3, col="blue")
  
  legend("topright",col=c("black", "red", "blue"),
  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,box.lwd=0)
  
  # 4th chart
  plot(data$Time, data$Global_reactive_power, type="n",xlab="datetime",
    ylab="Global_reactive_power")
  lines(data$Time, data$Global_reactive_power)
  
  dev.off()
  
}