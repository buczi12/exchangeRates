data <- read.csv(url("http://www.nbp.pl/kursy/Archiwum/archiwum_tab_a_2016.csv"), sep = ';', dec = ',', header = FALSE, stringsAsFactors = FALSE)
y <- as.numeric(sub(",", ".", data[3:(dim(data)[1]-3), "V3"], fixed = TRUE))


x <- data[3:(dim(data)[1]-3), "V1"]
x <- as.POSIXct(x, format = "%Y%m%d")
plot(x, y, type = "l", xlab="Czas", ylab="Kurs", panel.first=grid())
title(paste("Kurs waluty", data[2, "V3"],"/ polski z³oty"))

