# Sourcing the household data with only two days of data
source("Household_subset.R")

plot2 <- function(data=NULL) {
  if(is.null(data))
    data <- load_data()
  
  png("plot2.png", width=400, height=400)
  
  #Type 1 attribute indicates a plot with lines
  
  plot(data$Time, data$Global_active_power,
  type="1", xlab="",ylab="Global Active Power (kilowatts)")
  dev.off()
}
