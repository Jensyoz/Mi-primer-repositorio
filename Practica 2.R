# 6.Cree los siguientes vectores (practica 1)

Nombrepelicula=c("Shrek","Shrek2","Shrek tercero","Shrek:Felices para siempre")

Puntuacion=c(7.9,7.2,6.1,6.3)

Antes_del_2005=c("True","True","False","False")

#Pracatica 2

# 1. Con base al ejercicio genere un dataframe (Peliculas de Shrek)

names(Nombrepelicula) = c("Peli1","Peli2","Peli3","Peli4")

DataframePelis= data.frame (Nombrepelicula,Puntuacion,Antes_del_2005)

View(DataframePelis)

# 2.Caso estad�stico

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

FrecuenciaRelativa = FrecuenciaAbsoluta / length(resultados)

FrecuenciaRelativa

#Genere las estructuras necesarias para crear el siguiente dataframe

#3. Genere las estructuras necesarias para crear el siguiente dataframe 

nombres = c ("hugo", "paco","luis","paty","maria","ruben","gaby")

edades = c (28L,26L,32L,24L,33L,23L,43L)

sueldos = c (12.5, 13.5, 14.8, 7.1, 57.7, 45.3, 34.2)

genero = c ("M","M","M","F","F","M","F")

pasatiempos = c ("musica","musica","estudio","videojuegos","musica","musica","videojuegos")

Dataframeejercicio3= data.frame(nombres,edades,sueldos,genero,pasatiempos)

View(Dataframeejercicio3)

# 4.Cree un dataframe con los siguientes insumos

#Author DataFlair
int_vec <- c(1,2,3)

char_vec <- c("a", "b", "c")

bool_vec <- c(TRUE, TRUE, FALSE)

Salario <- c(5000,56700,6000)

Dataframeejer4= data.frame(int_vec,bool_vec,Salario)

View(Dataframeejer4)

Comision=c(Dataframeejer4$Salario+(Dataframeejer4$Salario*0.05))
           
View(Comision)         

#Parte 2 Caso estad�stico

#Creaci�n de las variables "genero" y "edad" (vectores de extensi�n 10)

genero = c ("Hombre","Mujer","Hombre","Mujer","Hombre","Mujer",
            "Hombre","Mujer","Hombre","Hombre")



edad = c (10L,20L,30L,40L,50L,55L,60L,63L,67L,68L)



glucemia_basal = c (123,230,180,164,210,220,193,202,152,185)



tratamiento = c (FALSE,TRUE,FALSE,FALSE,TRUE,FALSE,TRUE,TRUE,FALSE,FALSE)

Mispacientes= data.frame(genero,edad,glucemia_basal,tratamiento)

View(Mispacientes)

 #Haga una descripci�n de datos cuantitativos

max(Mispacientes$edad)
#Edad Maxima del grupo de pacientes

min(Mispacientes$edad)
#Edad Minima del grupo de pacientes

mean(Mispacientes$edad)
#Edad media del grupo de pacientes

sd(Mispacientes$edad)
#La Variaci�n estandar entre las edades de los pacientes 
# es la medida de dispersi�n m�s com�n, que indica qu� tan
#dispersos est�n los datos con respecto a la media

round(sd(Mispacientes$edad),2)
# Redondea un resultado 

quantile(Mispacientes$edad)
#Cuantiles son unas medidas de posici�n que dividen a la distribuci�n en un cierto n�mero de partes
#de manera que en cada una de ellas hay el mismo de valores de la variable.
  
FrecuenciaAbsoluta =table(glucemia_basal)

FrecuenciaRelativa = FrecuenciaAbsoluta / length(genero)


#Investigue alguna forma de representar gr�ficamente las variables edad y genero

plot(as.factor(Mispacientes))
hist(Mispacientes$edad)























