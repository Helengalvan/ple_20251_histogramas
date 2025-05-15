# Histogramas
temperatura <- c(29.8, 32.4, 35.3, 27.2, 29.3, 30.4)
hist(temperatura,
     main = "Hisrograma de temperatura",
     xlab = "temperatura(°C)",
     ylab = "frecuencia", 
     col = "lightblue", 
     border = "black",
     breakc = 9,
     xlim = c(27,36))