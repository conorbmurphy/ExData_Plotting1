# dat2$Global_active_power is a factor so it needs to first be a character and 
# then numeric to coerce it without ending up with a distorted number

png(file = "Plot1.png")
hist(as.numeric(as.character(dat2$Global_active_power)), col = "red", xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
dev.off()
