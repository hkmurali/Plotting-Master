
date_time <- function(date, time) {
  return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
}

load_data <- function() {
  filename <- "household_power_consumption.txt"
  house <- read.table(filename,
                   header=TRUE,
                   sep=";",
                   colClasses=c("character", "character", rep("numeric",7)),
                   na="?")
  # convert date and time variables to Date/Time class
  house$Time <- strptime(paste(house$Date, house$Time), "%d/%m/%Y %H:%M:%S")
  house$Date <- as.Date(house$Date, "%d/%m/%Y")
  # only use data from the dates 2007-02-01 and 2007-02-02
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  house <- subset(house, Date %in% dates)
  
  return(house)
  
}