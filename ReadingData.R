############################
# Coursera Class: Exploratory Data Analysis
#
# By: Conor Murphy
############################

# The dataset has 2,075,259 rows and 9 columns
# ((2075258*9*8)/2^20)/2^10 # it will require .139 GB of memory, or around 2x
# that to read the data in
# Reading the data to object "dat" and combining variables "Date" and "Time"
# to "Date_and_Time" as class POSIXct

dat <- read.table(file.choose(), sep = ";", header = TRUE)
dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
dat2 <- dat[dat$Date >= "2007-02-01" & dat$Date < "2007-02-03",]
