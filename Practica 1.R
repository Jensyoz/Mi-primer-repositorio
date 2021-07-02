# 1.Ejemplo de las estructuras if y for

edad = 65

if (edad >= 21) {
  
  print("Adulto")
  
}else{
  
  print("Joven")
  
}

# FOR
final=25

for (i in 1:final) 
  {print(i)
}

# 2.Declare un tipo de variable double, integer y carácter

#Double 
variableDouble =4.8

typeof(variableDouble)

#String o Caracter 
VariableString ="Jensy"

typeof(VariableString)
 
#integer
VariableInteger = 10L

typeof(VariableInteger)

# 3.Cree un vector de enteros

VE=c(2L,4L,8L,12L,3L,7L,6L,10L,9L,1L)
VE[4]

# 4.Cree un vector con los meses del año

VM= c("enero","febrero","marzo","abril","mayo","junio","julio","agosto","setiembre",
     "octubre","noviembre","diciembre")

# 5.Cree un vector con nombre de personas

VP=c("Nicole","Melany","Sandra","Victor","Wagner","Tatiana","Leo","Tommy")

# 6.Cree los siguientes vectores

Nombrepelicula=c("Shrek","Shrek2","Shrek tercero","Shrek:Felices para siempre")

Puntuacion=c(7.9,7.2,6.1,6.3)

Antes_del_2005=c("True","True","False","False")

# 7. Saque las siguientes funciones con base algún vector numérico del ejercicio 
# 6 (Vector 2: Puntuación), haga investigación de los mismos

length(Puntuacion)
# Es la longitud de los elementos del objeto

min(Puntuacion) 

# Trae la puntuaciòn minima de los elementos

max(Puntuacion)

# Trae la puntuaciòn maxima de los elementos

mean(Puntuacion)
# promedio de los elementos de x

median(Puntuacion)
# mediana de los elementos de x (valor que mas se repite)

sort(Puntuacion)
# ordena los elementos de x en orden ascendente

plot(Puntuacion)
#Grafico

unique(Puntuacion)

#si x es un vector o un marco de datos, devuelve un objeto similar pero suprimiendo 
#elementos duplicados

which.max(Puntuacion)
#devuelve el ´indice del elemento maximo de ´ x

which.min(Puntuacion)
#devuelve el ´indice del elemento miinimo de x

Sqrt (Puntuacion)
#raiz cuadrada

# 8.Genere un vector con valores del 1 al 100

vector8 = c(1:100)

# 9.Genere un vector con valores del 1 al 100 de 10 en 10

vector1 = c (seq(from = 0, to = 100, by = 10))

vector1



