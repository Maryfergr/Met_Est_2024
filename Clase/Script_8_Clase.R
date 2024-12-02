#María Fernanda González Rodríguez 
#2093400
#28/10/2024 

#Regresión Lineal

erupciones <- read.csv("C:/Repositorios/Met_Est_2024/Clase/erupciones.csv", header = T)

head(erupciones)

plot(erupciones$waiting, erupciones$eruptions, pch = 19, col = "lavender", xlab = "Tiempo espera (min)", ylab = "Duración (min)")

range(erupciones$eruptions)
range(erupciones$waiting)

#Revisar si existe una relación lineal entre dos variables 
cor.test(erupciones$eruptions, erupciones$waiting)
cor.test(erupciones$waiting, erupciones$eruptions)

#La pregunta: Podemos predecir el tiempo de la erupción en base al tiempo de espera entre dos erupciones consecutivas.
lm(erupciones$eruptions ~ erupciones$waiting)
gy.lm <- lm(erupciones$eruptions~ erupciones$waiting)

summary(gy.lm)


#Graficar línea de tendencia central
plot(erupciones$waiting, erupciones$eruptions, pch = 19, col = "lavender", xlab = "Tiempo espera (min)", ylab = "Duración (min)")
abline(gy.lm, col = "plum2", lwd = 2)

#agregar una tabla el valor predicho 

erupciones$predicho <- gy.lm$fitted.values
erupciones$yprima <- -1.874016 + 0.075628 * erupciones$waiting
erupciones$residual <- gy.lm$residuals
erupciones$residual <- gy.lm$residuals^2


yprima <- c(70, 75, 82)
-1.87+0.075 * yprima
