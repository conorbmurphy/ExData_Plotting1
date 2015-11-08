
png(file = "Plot4.png")
par(mfcol = c(2, 2))
with(dat2, {
        plot(rownames(dat2), as.numeric(as.character(dat2$Global_active_power)), type = "l",
             xlab = " ", ylab = "Global Active Power", xaxt = "n")
        axis(1, at = c(66637, 68077, 69516), labels = c("Thu", "Fri", "Sat"))
        plot(rownames(dat2), as.numeric(as.character(dat2$Sub_metering_1)), type = "l",
             xlab = " ", ylab = "Energy sub metering", xaxt = "n")
        lines(rownames(dat2), as.numeric(as.character(dat2$Sub_metering_2)), type = "l",
              col = "red")
        lines(rownames(dat2), as.numeric(as.character(dat2$Sub_metering_3)), type = "l",
              col = "blue")
        axis(1, at = c(66637, 68077, 69516), labels = c("Thu", "Fri", "Sat"))
        legend("topright", pch = "-", bty = "n", col = c("black", "red", "blue"), legend =
                       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        plot(row.names(dat2), as.numeric(as.character(dat2$Voltage)),
             type = "l", xlab = "datetime", ylab = "Voltage", xaxt = "n")
        axis(1, at = c(66637, 68077, 69516), labels = c("Thu", "Fri", "Sat"))
        plot(row.names(dat2), as.numeric(as.character(dat2$Global_reactive_power)),
             type = "l", ylab = "Global_reactive_power", xlab = "datetime", xaxt = "n")
        axis(1, at = c(66637, 68077, 69516), labels = c("Thu", "Fri", "Sat"))
})
dev.off()
