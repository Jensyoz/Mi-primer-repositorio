# 6.Cree los siguientes vectores (practica 1)

Nombrepelicula=c("Shrek","Shrek2","Shrek tercero","Shrek:Felices para siempre")

Puntuacion=c(7.9,7.2,6.1,6.3)

#Prcatica 2

# 1. Con base al ejercicio genere un dataframe (Peliculas de Shrek)

names(Nombrepelicula) = c("Peli1","Peli2","Peli3","Peli4")

Censo= data.frame (Nombrepelicula,Puntuacion)

View(Censo)

# 2.Caso estadístico

Insuficiente=c("I")
Bueno=c("B")
Regular=c("R")
Medio=c("M")
Alto=c("A")

resultados=c("A","A", "M", "M", "M", "M", "M","I","B","B","R","I","I","I","R","R",
          "R","R","R","R","R","R","R","R","R", "M", "M", "M", "M", "M", "M",
          "M", "M", "M", "M", "M", "M", "M","A","A")

#Tabla de Frecuencia Absoluta

FrecuenciaAbsoluta =table(resultados)

FrecuenciaAbsoluta

#Tabla de Frecuencia Relativa

FrecuenciaRelativa = FrecuenciaAbsoluta / longitud(resultados)







