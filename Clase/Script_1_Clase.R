# María Fernanda González Rodríguez
# 123456
# 20/08/2024


# Problema 1 -------------------------------------------------------

#Ingeresar en objetos la superficie reforestada por especie

Pinus <- 3140
Mezquite <- 1453
Encinos<- 450
Teka <-1200
Juniperos <-720

superficie <- c(Pinus, Mezquite, Encinos, Teka, Juniperos)
sup <- c(3140, 1453, 450, 1200, 720)

sup
superficie

# Operaciones
# Transformar ha a m2
m2 <- superficie * 10000
superficie * 10000

nombre <- c("Pinus", "Mez", "Teka", "Jun", "Encino")
sup2 <- sort(sup, decreasing = T)

barplot(sup2, ylim = c(0,3500), col = "lightpink", names.arg = nombre,
        xlab = "Especies", ylab = "Superficie (ha)", main = "Reportes CONAFOR")
