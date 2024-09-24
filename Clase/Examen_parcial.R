#Primer examen parcial
#Métodos Estadísticos
#María Fernanda González Rodríguez
# 2093400
# 24/09/2024

diametro <- read.csv("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/refs/heads/main/Datos_Examen/parcelas.csv", header = T)

#boxplot
boxplot(diametro$Diámetro, col = "lavender", xlab = "Diámetro", ylab = "Parcelas")

#Shapiro test
shapiro.test(diametro$Diámetro)

#Prueba de t
t.test(diametro$Diámetro~ diametro$Parcelas)
