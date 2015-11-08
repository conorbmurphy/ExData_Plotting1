
png(file = "Plot3.png")
plot(rownames(dat2), as.numeric(as.character(dat2$Sub_metering_1)), type = "l",
     xlab = " ", ylab = "Energy sub metering", xaxt = "n")
lines(rownames(dat2), as.numeric(as.character(dat2$Sub_metering_2)), type = "l",
      col = "red")
lines(rownames(dat2), as.numeric(as.character(dat2$Sub_metering_3)), type = "l",
      col = "blue")
axis(1, at = c(66637, 68077, 69516), labels = c("Thu", "Fri", "Sat"))
legend("topright", pch = "-", col = c("black", "red", "blue"), legend =
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
