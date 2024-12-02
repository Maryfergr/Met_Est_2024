#María Fernanda González Rodríguez 
#2093400
#29/10/2024
#Ejercicios 


#Ejercicio 1

Grupo <- gl(2, 15, labels = c("Bosque Templado", "Bosque Tropical"))
biomasa <- c(45, 48, 47, 50, 46, 49, 51, 47, 46, 52, 48, 50, 49, 47, 46, 60, 59, 62, 61, 58, 63, 62, 61, 60, 59, 62, 60, 61, 63, 62)
Datos <- data.frame(Grupo, biomasa)
head(Datos)

#Calcular media y desviación estandar

install.packages("dplyr")
library(dplyr)

resumen <- Datos %>%
  group_by(Grupo) %>%
  summarise(Media = mean(biomasa), 
          DesviaciónEstandar = sd(biomasa))
print(resumen)

#Realizar una prueba de t
prueba_t <- t.test(biomasa ~ Grupo, data = Datos, var.equal = TRUE)
print(prueba_t)


#PREGUNTAS 
#1 La hipótesis nula no existe una diferencia significativa en la biomasa promedio del bosque templado y el bosque tropical
#2 Bosque Templado Media = 48.1, Desviación estandar 2.05 Bosque Tropical Media = 60.9, Desviación Estandar = 1.51
#3 Si, si existe una diferencia significativa 
#4 La hipotesis nula se debe rechazar ya que hay una diferencia significativa en la biomasa promedio entre ambos tipos de bosque.
#5Los resultados indican que cada tipo de bosque podría requerir diferentes estrategias de manejo para conservar la biomasa.

#Ejercicio 2

madera <- read.csv("C:/Repositorios/Met_Est_2024/Prep_examen.csv", header = T)
