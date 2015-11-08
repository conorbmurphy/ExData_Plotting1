
png(file = "Plot2.png")
plot(rownames(dat2), as.numeric(as.character(dat2$Global_active_power)), type = "l",
     xlab = " ", ylab = "Global Active Power (kilowatts)", xaxt = "n")
axis(1, at = c(66637, 68077, 69516), labels = c("Thu", "Fri", "Sat"))
dev.off()

