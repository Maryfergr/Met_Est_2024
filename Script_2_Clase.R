#Clase_2 02/Sep/2024
# María Fernanda González Rodríguez
#Instalar paquetes
library(repmis)

#Cambiae variable
Cuadro_1$Posicion <- as.factor(Cuadro_1$Posicion)
Cuadro_1$Posicion <- as.factor(Cuadro_1$Especie)
summary(Cuadro_1)

#boxplot
boxplot(Cuadro_1$Diametro ~ Cuadro_1$Especie, xlab = "Especie", ylab = "Diametro", col = "azure")
boxplot(Cuadro_1$Vecinos ~ Cuadro_1$Especie, xlab = "Especie", ylab = "Vecinos", col = "lavenderblush")

#Extracción
SpF <- subset(Cuadro_1, Cuadro_1$Especie =="F")

#Seleccionar exeptuando la letra F
SpHC <- subset(Cuadro_1, Cuadro_1$Especie != "F")

#Obtener la medida de variable transversa
tapply(Cuadro_1$Altura, Cuadro_1$Especie, mean)
tapply(Cuadro_1$Diametro, Cuadro_1$Especie, mean)

#Base total (ENCONTRAR VALORES DISTINTOS O IGUALES A LA MEDIA DE...)
SpHE <- subset(Cuadro_1, Cuadro_1$Altura >= mean(Cuadro_1$Altura))
SpHE <- subset(Cuadro_1, Cuadro_1$Altura <= mean(Cuadro_1$Altura))
SpD <- subset(Cuadro_1, Cuadro_1$Diametro == mean(Cuadro_1$Diametro))
which(Cuadro_1$Altura >20)

#Arrojar filas o celdas
Cuadro_1[18,]
Cuadro_1[18:20,7]
Cuadro_1[,3]
Cuadro_1[c(18,20),]
