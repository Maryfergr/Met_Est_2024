#Muestras dependientes
#Mismos individuos metidos en dos tiempos diferentes 
#(2012 vs 2013) producción de semillas 

tiempo <- read.csv("C:/Repositorios/Met_Est_2024/Muestra_dependiente.csv", header = T)

boxplot(tiempo$Kgsem ~ tiempo$Tiempo, col = "lavender", xlab = "Año", ylab = "Semillas (Kg)")
abline(h=10.1, col = "aliceblue", lwd = 3, lty = "dotdash")
abline(h=10.9, col = "lightcyan", lwd = 3, lty = "dotdash")

#Determinar las medias de Kg en ambos años 
tapply(tiempo$Kgsem, tiempo$Tiempo, mean)

#Quiero saber si hay diferencias solamente
t.test(tiempo$Kgsem~ tiempo$Tiempo, paired =T)

#saber si 2013 es mayor que 2012
t.test(tiempo$Kgsem~ tiempo$Tiempo, paired =T, alternative = "less")

#Colores
"lemonchiffon"
"lemonchiffon1"
"lemonchiffon2"
"lavender"
"lightcyan"
"aliceblue"
"mistyrose"
"paleturquoise"

