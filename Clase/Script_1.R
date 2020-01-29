# Ana Karen Rivera Aguirre 
# Matrícula: 1942398
# 29.01.2020


# Operadores básicos ------------------------------------------------------

2+2
a <- 2
a+5
a+a^2

log(a)

# Caracteristicas descriptivas --------------------------------------------

# Ingresar comjunto de datos

peso <- c(70, 62, 52, 90, 38, 52, 50, 56, 70, 65,
          76, 70, 72)
peso
# número de observaciones (length)

length(peso)

# Calcular la media del peso sumatoria de las observaciones
# y dividirlo entre el número de individuos muestreados

sum(peso)/length(peso)


peso.media <- sum(peso)/length(peso)

mean(peso)
median(peso)

sd(peso)
var(peso)

fivenum(peso)
range(peso)
peso

# Graficas ----------------------------------------------------------------

boxplot(peso)
boxplot(peso, col= "lightgreen", ylab= "Peso (kg)",
        main="Peso alumnos tomado el 29.01.2020")

