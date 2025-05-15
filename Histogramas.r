# Histogramas
temperatura <- runif (25, min= 27, max= 36) # runif genera 1000 numeros aleatorios entre 27 y 36

hist(temperatura,
     main = "Temperaturas en la ciudad de la Paz",
     xlab = "temperatura(°C)",
     ylab = "frecuencia", 
     col = "lightblue", 
     border = "black",
    breaks = 9,
     xlim = c(27,36))

runif (1, min = 0, max = 1) # runif se usa para generar numeros aleatirios 
runif (2, min = 0, max = 1) # genero dos nmero s aleatorios entre 0 y 1
