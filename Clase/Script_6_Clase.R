#María Fernanda González Rodríguez
#2093400
#Métodos Estadísticos
#15/10/2024 
#Ejercicio 1

Pseudo <- read.csv("C:/Repositorios/Met_Est_2024/Clase/Ejercicio 1.csv", header = T)

#Boxplot
boxplot(Pseudo$Grupo.1, Pseudo$Grupo.2, xlab = "Grupo.1", ylab = "Grupo.2", col = "azure")

#Pruebas T
shapiro.test(Pseudo$Grupo.1)
shapiro.test(Pseudo$Grupo.2)

bartlett.test(Pseudo$Grupo.1, Pseudo$Grupo.2)



#Ejercico 2

suelos <- read.csv("C:/Repositorios/Met_Est_2024/Clase/Ejercicio 2.csv", header = T)

