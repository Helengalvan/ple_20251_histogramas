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

# t unif     t normal

temp_uniforme <-runif(1000, min=10, max=30)
temp_normal <- rnorm(1000, mean=20, sd=5)
# crear un data frame para la tabla
tabla_uniforme <-data.frame(temperatura=temp_uniforme)
tabla_normal <-data.frame(temperatura=temp_normal)

par(mfrow=c(1,2)) # dividir la ventana de graficos en 1 fila y 2 columnas
hist(tabla_uniforme$temperatura,
     main = "Temperaturas Uniformes",
     xlab = "temperatura(°C)",
     ylab = "frecuencia", 
     col = "lightblue", 
     border = "black",
     breaks = 9,
     xlim = c(10,30))
hist(tabla_normal$temperatura,
     main = "Temperaturas Normales",
     xlab = "temperatura(°C)",
     ylab = "frecuencia", 
     col = "lightblue", 
     border = "black",
     breaks = 9,
     xlim = c(10,30))