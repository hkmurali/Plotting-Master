source("Household_subset.R")

plot2 <- function(data=NULL) {
  if(is.null(data))
    data <- load_data()
  
  png("plot2.png", width=400, height=400)
  
  plot(data$Time, data$Global_active_power,
       type="1",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}
