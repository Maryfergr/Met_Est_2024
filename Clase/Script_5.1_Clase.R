#María Fernanda González Rodríguez
#2093400
#23/09/2024

semillas <- read.csv("C:/Repositorios/Met_Est_2024/Clase/Datos.semillas.csv", header = TRUE)
head(semillas)

#Normalidad de datos
boxplot(semillas$Peso, col = "lemonchiffon")
abline(h =6.2, col= "lightblue", lwd =3, lty = "dotdash")
abline(h =5.7, col= "lavender", lwd =3, lty = "dotdash")

#Prueba de normalidad de datos
shapiro.test(semillas$Peso)

#Prueba T
t.test(semillas$Peso, mu = 6.2) #No existe alguna diferencia entre peso observado y el peso de la muestra teorica
#Hay que aceptar la hipótesis alternativa

#Ejemplo 2
t.test(semillas$Peso, mu = 5.78)
boxplot(semillas$Peso, col= "mistyrose")
abline(h =5.78, col= "lemonchiffon1", lwd =3, lty = "dotdash")
abline(h =5.7, col= "aliceblue", lwd =3, lty = "dotdash")

#Ejemplo 3
#Media teorica 5.78
t.test(semillas$Peso, mu = 5.78)

#No hay diferencia significativa

boxplot(semillas$Peso)
abline(h=5.78, col = "aliceblue", lwd=3, lty="dotdash")
abline(h=5.7, col = "lightblue", lwd=3, lty="dotdash")
