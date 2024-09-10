#Importar datos de Githut

url <-"https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"

madera <- read.csv(url, header = T)

boxplot(madera$Peso_g ~ madera$Especie, col = "lightcyan")

shapiro.test(madera$Peso_g)

bartlett.test(madera$Peso_g ~ madera$Especie)

madera$peso_t<- log(madera$Peso_g+ 0.05)

boxplot(madera$peso_t ~ madera$Especie, col = "lavender")

t.test(madera$Peso_g ~ madera$Especie, var.equal = F)
t.test(madera$Peso_g ~ madera$Especie, var.equal = F)

boxplot(madera$Lado_C ~ madera$Especie, col = "#F0F8FF")

shapiro.test(madera$Lado_C)

bartlett.test(madera$Lado_C ~ madera$Especie)

madera$Lado_C<- log(madera$Lado_C+ 0.05)

t.test(madera$Lado_C ~ madera$Especie, var.equal = F)
