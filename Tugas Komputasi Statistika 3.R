# 1. Membuka dan melihat data
data(airquality)
head(airquality)
str(airquality)
# 2. Histogram + Density Curve untuk Wind
hist(airquality$Wind,
     probability = TRUE,
     breaks = 10,
     xlab = "Wind",
     ylab = "Density",
     main = "Histogram dan Density Wind",
     col = "lightblue")

# Tambah garis kepadatan
lines(density(airquality$Wind, na.rm = TRUE),
      col = "darkblue", 
      lwd = 2)

# ada garis mean dan median (berfungsi dasar statistika deskriptif)
abline(v = mean(airquality$Wind, na.rm = TRUE), col = "tomato", lwd = 2)
abline(v = median(airquality$Wind, na.rm = TRUE), col = "seagreen", lwd = 2)


# 3. Boxplot dan Stem-and-leaf untuk Wind
boxplot(airquality$Wind,
        horizontal = TRUE,
        main = "Boxplot Wind",
        xlab = "Wind",
        col = "gold")

# Stem-and-leaf
stem(airquality$Wind)

# 4. Scatter Plot Wind vs Temp
plot(airquality$Wind, airquality$Temp,
     main = "Scatter Plot Wind vs Temp",
     xlab = "Wind",
     ylab = "Temp",
     pch = 19,
     col = "steelblue")

abline(lm(Temp ~ Wind, data = airquality), col = "pink", lwd = 2)

#sama seperti contoh scatterplot 
rug(airquality$Wind)
rug(airquality$Temp, side = 2)

