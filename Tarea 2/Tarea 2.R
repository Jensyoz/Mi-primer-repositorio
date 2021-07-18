# Seleccione una base datos y realice un análisis exploratorio

# a. Use conexiones a SQL:  Se utilizo "DB kaggle"

# b. Debe generar al menos 4 plots explicando el análisis que sacó de cada uno

Casos_Covid_19_India= data.frame(Casos_Covid_19_India)

# 1. QUIERO UN GRAFICO DE BARRAS  EN DONDE SE VISUALIZA LOS CASOS POR DISTRITO EN ALERTA ROJA


barplot(Distritos_alerta_Roja$Casos.Positivos,names.arg=as.factor(Distritos_alerta_Roja$Distritos),
        col ="red",main = "Distritos en Alerta Roja")

# 2. 

plot(select(Casos_Covid_19_India,2,4),main="Relacion Casos Positivos vr Recuperados",col="blue")


# 3.  QUIERO UN GRAFICO DE BARRAS  EN DONDE SE VISUALIZA LOS DISTRITOS CON MENOS FALLECIDOS
Tabla=filter(Casos_Covid_19_India,Casos_Covid_19_India$Fallecidos<2500)


qplot (Fallecidos,Casos.Positivos,data =Tabla, color =Fallecidos,size=0.5,
     main= "Distritos < 2500 Fallecidos")


#c. Haga la búsqueda de correlación de variables y explíquelas (matriz)


plot(Casos_Covid_19_India$Casos.Positivos,Casos_Covid_19_India$Fallecidos,main ="Correlacion Variables",
     xlab ="Casos Positivos",ylab="Fallecidos")


# d. Utilice mínimo 4 funciones de dplyr para manipular datos

# 1.
Casos_Covid_19_India = arrange(Casos_Covid_19_India,(Casos.Positivos))
View(Casos_Covid_19_India)

# 2.Validciòn de casos positivos vrs recuperados , acti y fallecidos 


Casos_Covid_19_India = mutate ( Casos_Covid_19_India, 
                                Diferencia_casos_Pos=(Casos.Activos+Recuperados+Fallecidos ))

# 3.
# Quiero traer 3 columnas y ordenarlo por % de tasas recuperados 
Orden_Tasas_Lel_Rec=Casos_Covid_19_India %>% select(Distritos,Casos.Positivos,Tasa.de.Recuperacion....,
                                                    Tasa.Letalidad....)%>%arrange(desc(Tasa.de.Recuperacion....))
                           

View(Orden_Tasas_Lel_Rec)                                                       
                                                           
# 4.
# Distritos con mas casos positivos 

Distritos_alerta_Roja = filter(Casos_Covid_19_India , Casos.Positivos > 180000)



# e. Cree al menos 2 funciones  

# 1.
Diferencia_Act_y_Rec= function(Casos.Positivos,Diferencia_casos_Pos){
  
  Casos.Positivos-Diferencia_casos_Pos
  
}

Diferencia_Act_y_Rec(Casos_Covid_19_India$Casos.Positivos,Casos_Covid_19_India$Diferencia_casos_Pos)

# 2.
Tasa_Caso_Activos= function(Casos.Activos,Casos.Positivos){
  
  Casos.Activos/Casos.Positivos*100
  }
  
Tasa_Caso_Activos(Casos_Covid_19_India$Casos.Activos,Casos_Covid_19_India$Casos.Positivos)



