#María Fernanda González Rodríguez 
#2093400
#12/nov/2024
#ANOVA

#Importar datos 

paraje <- read.csv("C:/Users/Usuario.PC11/Documents/Clase/Datos_Rascon_Anova.csv", header =T)

boxplot(paraje$DAP ~ paraje$Paraje, col = "lavender")

tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, var)

shapiro.test(paraje$DAP)
bartlett.test(paraje$DAP ~ paraje$Paraje)

par.aov <- aov(paraje$DAP ~ paraje$Paraje)
summary(par.aov)

#Prueba de Tukey

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))
