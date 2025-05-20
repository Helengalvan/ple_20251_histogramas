# Histogramas
temperatura <- runif (100, min= 27, max= 36) # runif genera 1000 numeros aleatorios entre 27 y 36

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

     # 20/05/25

#tarea segun el profe
HistogramasTabla <- function(df){
     namvars <- names (df)
     n <- length (namvars)
     par (mfrow = c(1,n))# una fila n columnas
     for(var in namvars){
          #histograma para cada variable
          hist(df[[var]],
          main= var,
          xlab = "Rangos",
          ylab = "Frecuencia",
          col = "Lightblue",
          border = "Black")
     }
     par(mfrow = c(1,1)) #regresar a una sola grafica
}

tabla <- data.frame(
     "Tunif"= runif ( 1000,min=25, max=35),
     "Texp" = rexp () row.names = NULL, check.rows = FALSE, check.names = TRUE, stringsAsFactors = default.stringsAsFactors())

# histograma codigo del profe
HistogramasTabla <- function(df){
     namvars <- names(df)
     n <- length(namvars)
     par(mfrow = c(1, n)) # Una fila, n columnas
     for(var in namvars){
          # Histograma para cada variable
          if(is.numeric(df[[var]])){
               hist(df[[var]], 
                    main = var, 
                    xlab = "Rangos", 
                    ylab = "Frecuencia", 
                    col = "lightblue", 
                    border = "black",
                    breaks = 9)
          } else{
               # Gráfico de barras para variables categóricas
               barplot(table(df[[var]]), 
                       main = var, 
                       xlab = "Categoría", 
                       ylab = "Frecuencia", 
                       col = "lightblue", 
                       border = "black")
          }
     }
     par(mfrow = c(1, 1)) # Regresar a una sola gráfica
}


tabla <- data.frame(
    "Tunif"=runif(1000,min=25,max=35),
    "Texp"=rexp(1000,rate = 1/30),
    "TnormA"=rnorm(1000,mean=0,sd=2),
    "TnormB"=rnorm(1000,mean=10,sd=2),
    "Enteros"=sample(1:10,10,replace = TRUE),
    "Categoricos"=sample(LETTERS[1:26],1000,replace = TRUE)
)

HistogramasTabla(tabla)
a <- mean (tabla$Tunif) # media de la variable Tunif