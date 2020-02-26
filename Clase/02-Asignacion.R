#Tarea 2
# Ana Karen Rivera Aguirre
# Matricula: 1942398

library(plyr)
accidentes <- c (0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc # vemos la primera BD credas con solo dos columnas

# Agregar una nueva columna a la BD "acc" y agregar la formula
acc$rf <- acc$freq/sum(acc$freq)*100
acc

barplot(acc$freq, names.arg = acc$x, xlab = "Accidentes",
        ylab = "meses", col = "purple")
mean(accidentes)
sum(accidentes)
boxplot(accidentes)

# Ejercicio 2 -------------------------------------------------------------

especies <- c("F", "H", "F", "C", "F", "A", "H",
              "F", "H", "C", "A", "C", "F", "H",
              "H", "H", "F", "H", "A", "C", "F",
              "H", "H", "F")
.sp <- count(especies)
.sp$rf <- .sp$freq/sum(.sp$freq)*100
.sp
barplot(.sp$freq, names.arg = .sp$x, col = "yellow",
        ylab = "Frecuencia", xlab = "Especies")

# Ejercicio 3 -------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Enconmtrar la frecuencia de las variables vecinos y especies
.vc <- table(conjunto$Vecinos, conjunto$Especie)
.vc1 <- addmargins(as.table(.vc))  


# Ejercicio 4 -------------------------------------------------------------
.h <- conjunto$Altura
range(.h)
hist(.h, main = "Datos sin  intervalos definidos", col = "black")

Intervalo <-seq(7.5, 22.5, by=5)
Intervalo

h.table <-cut(.h, Intervalo)
table(h.table)

hist(conjunto$Altura, breaks = Intervalo, main = "Datos con intervalo definido", col = "green")
h.prop <- cbind(table(h.table))
h.per <- round(prop.table(h.prop)*100,2)

# Ejercicio 5 -------------------------------------------------------------

par(mfrow=c(1,2))
hist(.h, main = "Datos sin intervalo definido", col = "red")
hist(conjunto$Altura, breaks = Intervalo, main = "Datos con intervalo definido", col ="blue")
par(mfrow=c(1,1))

