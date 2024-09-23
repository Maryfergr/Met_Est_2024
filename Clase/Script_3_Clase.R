#María Fernanda González Rodríguez
#2093400
#23/Sep/2024
#Pruba de t en una muestra
#realizar la comparación de una muestra experimental vs una muestra teoética

#Importe los datos de documentos a este objeto que se llama semillas
semillas <- read.csv("C:/Repositorios/Met_Est_2024/Datos_semillas.csv", header = T)

#Calcular la media del peso de las semillas
#Media 6.2g 
mean

#Probar la normalidadd de los datos de las semillas
shapiro.test(semillas$Peso)

#Primera visualización de los datos 
boxplot(semillas$Peso, col = "floralwhite")
abline(h =5.78, col = "lavender", lwd = 3, lty = "dotdash")
abline(h = 5.7, col = "powderblue", lwd = 3, lty = "dotdash")

t.test(semillas$Peso, mu = 6.2)
#No existen diferencias entre el peso observado y el peso de la muestra teoética
#Nuestras muertas de semillas son más pequeñas
#Concluimos que las semillas recolectadas en la facultad son más pequeñas 

#Media teoética es 5.78
t.test(semillas$Peso, mu = 5.78)
