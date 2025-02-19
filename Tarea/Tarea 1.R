<<<<<<< HEAD
# Cree un vector que contenga las notas de 10 estudiantes, debe utilizar la funci�n names(),
# adem�s aplique un plot.

Notas_Estudiantes=c(85,75,96,100,69,76,88,59,87,95)

names(Notas_Estudiantes)=c("Eduardo","Marcela","Valeria","Victor","Emerson","Daniela",
                           "Nicole","Carlos","Sandra","Issac")

plot(Notas_Estudiantes,type = "l")
hist(Notas_Estudiantes,main = "Nota Estudiantes",col="blue")

# Genere una base de datos en XLS, imp�rtela (trate que la base de datos contenga columnas
# cuantitativas, es decir campos como, por ejemplo, edad, a�o de nacimiento, factores, 
# cantidad de ventas, cantidad de compras, boolean), genere un proceso exploratorio y de 
# transformaci�n de datos, donde utilice las siguientes funciones:

# NOTA : Archivo que tome es el "Groceries data"

# Transformar en Dataframe

DatosComestibles= data.frame(DatosComestibles)


# a.Guardar datos en variables temporales, es decir hijas de la variable de importaci�n

Var_TempDatosComestible= select(DatosComestibles,itemDescription,year,Member_number)

View(Var_TempDatosComestible)

Var_semana= select(DatosComestibles,itemDescription,day_of_week,Date)

View(Var_semana)

  
# b. Al menos 2 operaciones aritm�ticas entre vectores

min(Var_TempDatosComestible$Member_number)
max(Var_TempDatosComestible$Member_number)

sd(Var_TempDatosComestible$Member_number)

length(Var_semana$day_of_week)

# C.  Filter
  
View(filter(Var_semana,itemDescription=="tropical fruit"& day_of_week > 3))

# D.Group by  

A�osagrupados=DatosComestibles%>%group_by(Member_number,year)%>%summarise(n=n())%>%filter(year=="2015")

view(A�osagrupados)

# la cantidad de veces que compraron los miebros por a�o

# E. Arrege

arrange(DatosComestibles,DatosComestibles$day_of_week)

view(arrange(DatosComestibles,DatosComestibles$day_of_week))


# F. Mutate  **Preguntar si se puede pasar a otro formato de fecha , por ejem solo numeros

DatosComestibles = mutate ( DatosComestibles , FechaHoy = date ())

# G.Select

select(DatosComestibles,Member_number,itemDescription)


# H. Debe entregar el c�digo, los resultados de ejecuci�n y una peque�a descripci�n de la 
# idea que expuso en el modelo exploratorio

# Respuesta H: Con las ejecuciones anteriores lo que se denota es cuales productos 
# se consumieron por cada numero de miembro y la cantidad de veces al a�o que lo 
# hicieron. A la vez los productos menos consumidos por semana.

# 3.Una investigaci�n realizada por la Universidad Hispanoam�rica detalla que los 
# salarios m�nimos para ciertos pa�ses se conforman de la siguiente forma:

salarios=c(432.21,239.48,249.94,373.22,233.86,366,331.11,258.86,349.20,31.60)

names(salarios)=c("Argentina","Bolivia","Brasil","Chile","Colmbia","Ecuador",
                  "Paraguay","Peru","Uruguay","Venezuela")

view(salarios)
                  
# a. Encontrar el salario promedio de estos pa�ses

mean(salarios)

# b. Encontrar la desviaci�n est�ndar de la muestra.

sd(salarios)


# c. Encuentre los salarios m�nimos m�s altos y m�s bajos de la muestra

min(salarios)
max(salarios)


# 4. De la base de datos proporciona, genere las estructuras donde muestre la 
# cantidad de facturas hechas por empleado, adem�s muestre el nombre de los empleados.
  
Bases_empleados=data.frame(Bases_empleados)
Bases_Factura=data.frame(Bases_Factura)

Union_Bases=merge(Bases_empleados,Bases_Factura, by="EmployeeID")

Facturas_por_empleado =Union_Bases%>% group_by(EmployeeID,LastName)%>% 
                       summarise(ID.order=n())%>% rename("Cantidad Ordenes"=ID.order)



# 5. A continuaci�n, se les muestra el ingreso de unidades de sacos de caf� por un 
# periodo de tiempo son: 7, 6, 5, 8, 7, 7, 7, 5, 6, 8. Calcular la desviaci�n est�ndar.                
                  
periodo_tiempo= c(7, 6, 5, 8, 7, 7, 7, 5, 6, 8)

sd(periodo_tiempo)

# 6. Considere los datos en el ejercicio 5. Hallar los percentiles 0, 25, 50, 75 y 100.
                  
quantile(periodo_tiempo) 

# 7.	Realice una peque�a investigaci�n sobre qu� es stringr de la colecci�n de paquetes 
# Tidyvers :   Respuesta en Word




















=======
# Cree un vector que contenga las notas de 10 estudiantes, debe utilizar la funci�n names(),
# adem�s aplique un plot.

Notas_Estudiantes=c(85,75,96,100,69,76,88,59,87,95)

names(Notas_Estudiantes)=c("Eduardo","Marcela","Valeria","Victor","Emerson","Daniela",
                           "Nicole","Carlos","Sandra","Issac")

plot(Notas_Estudiantes,type = "l")
hist(Notas_Estudiantes,main = "Nota Estudiantes",col="blue")

# Genere una base de datos en XLS, imp�rtela (trate que la base de datos contenga columnas
# cuantitativas, es decir campos como, por ejemplo, edad, a�o de nacimiento, factores, 
# cantidad de ventas, cantidad de compras, boolean), genere un proceso exploratorio y de 
# transformaci�n de datos, donde utilice las siguientes funciones:

# NOTA : Archivo que tome es el "Groceries data"

# Transformar en Dataframe

DatosComestibles= data.frame(DatosComestibles)


# a.Guardar datos en variables temporales, es decir hijas de la variable de importaci�n

Var_TempDatosComestible= select(DatosComestibles,itemDescription,year,Member_number)

View(Var_TempDatosComestible)

Var_semana= select(DatosComestibles,itemDescription,day_of_week,Date)

View(Var_semana)

  
# b. Al menos 2 operaciones aritm�ticas entre vectores

min(Var_TempDatosComestible$Member_number)
max(Var_TempDatosComestible$Member_number)

sd(Var_TempDatosComestible$Member_number)

length(Var_semana$day_of_week)

# C.  Filter
  
View(filter(Var_semana,itemDescription=="tropical fruit"& day_of_week > 3))

# D.Group by  

A�osagrupados=DatosComestibles%>%group_by(Member_number,year)%>%summarise(n=n())%>%filter(year=="2015")

view(A�osagrupados)

# la cantidad de veces que compraron los miebros por a�o

# E. Arrege

arrange(DatosComestibles,DatosComestibles$day_of_week)

view(arrange(DatosComestibles,DatosComestibles$day_of_week))


# F. Mutate  **Preguntar si se puede pasar a otro formato de fecha , por ejem solo numeros

DatosComestibles = mutate ( DatosComestibles , FechaHoy = date ())

# G.Select

select(DatosComestibles,Member_number,itemDescription)


# H. Debe entregar el c�digo, los resultados de ejecuci�n y una peque�a descripci�n de la 
# idea que expuso en el modelo exploratorio

# Respuesta H: Con las ejecuciones anteriores lo que se denota es cuales productos 
# se consumieron por cada numero de miembro y la cantidad de veces al a�o que lo 
# hicieron. A la vez los productos menos consumidos por semana.

# 3.Una investigaci�n realizada por la Universidad Hispanoam�rica detalla que los 
# salarios m�nimos para ciertos pa�ses se conforman de la siguiente forma:

salarios=c(432.21,239.48,249.94,373.22,233.86,366,331.11,258.86,349.20,31.60)

names(salarios)=c("Argentina","Bolivia","Brasil","Chile","Colmbia","Ecuador",
                  "Paraguay","Peru","Uruguay","Venezuela")

view(salarios)
                  
# a. Encontrar el salario promedio de estos pa�ses

mean(salarios)

# b. Encontrar la desviaci�n est�ndar de la muestra.

sd(salarios)


# c. Encuentre los salarios m�nimos m�s altos y m�s bajos de la muestra

min(salarios)
max(salarios)


# 4. De la base de datos proporciona, genere las estructuras donde muestre la 
# cantidad de facturas hechas por empleado, adem�s muestre el nombre de los empleados.
  
Bases_empleados=data.frame(Bases_empleados)
Bases_Factura=data.frame(Bases_Factura)

Union_Bases=merge(Bases_empleados,Bases_Factura, by="EmployeeID")

Facturas_por_empleado =Union_Bases%>% group_by(EmployeeID,LastName)%>% 
                       summarise(ID.order=n())%>% rename("Cantidad Ordenes"=ID.order)



# 5. A continuaci�n, se les muestra el ingreso de unidades de sacos de caf� por un 
# periodo de tiempo son: 7, 6, 5, 8, 7, 7, 7, 5, 6, 8. Calcular la desviaci�n est�ndar.                
                  
periodo_tiempo= c(7, 6, 5, 8, 7, 7, 7, 5, 6, 8)

sd(periodo_tiempo)

# 6. Considere los datos en el ejercicio 5. Hallar los percentiles 0, 25, 50, 75 y 100.
                  
quantile(periodo_tiempo) 

# 7.	Realice una peque�a investigaci�n sobre qu� es stringr de la colecci�n de paquetes 
# Tidyvers :   Respuesta en Word




















>>>>>>> 4cf8875291ddfc8cd4eb636203fa4e7e81d1b582
