# Sourcing the household data with only two days of data
source("Household_subset.R")

plot3 <- function(data=NULL) {
  if(is.null(data))
    data <- load_data()
  #Generating the 3rd Plot
  png("plot3.png", width=400, height=400)
  #Type 1 attribute indicates a plot with lines
  plot(data$Time, data$Sub_metering_1, type="l", col="black",
  xlab="", ylab="Energy sub metering")
  # Generating 2 more plots for metering 2 and 3 in red and blue respectively
  lines(data$Time, data$Sub_metering_2, col="red")
  lines(data$Time, data$Sub_metering_3, col="blue")
  #Creating a legend for the chart , top right corner position for the 3 plots
  legend("topright", col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)
  
  dev.off()
}