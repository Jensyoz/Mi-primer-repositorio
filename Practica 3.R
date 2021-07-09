# Practica 3

# Grafico Correlaciòn
View(Potabilidad_del_agua)

plot(select(Potabilidad_del_agua,Solids,Organic_carbon,Conductivity))

# Grafico Barras

Potabilidad_del_aguafiltro = filter(Potabilidad_del_agua, Sulfate <250 & Potability == 1)
View(Potabilidad_del_aguafiltro)


plot(as.factor(Potabilidad_del_aguafiltro$Potability ))
plot(as.factor(Potabilidad_del_aguafiltro$Potability ),Potabilidad_del_aguafiltro$Sulfate)



#· time based

mis_fechas <- seq(as.Date("2014/1/1"), by = "month", length = 50 ) 

plot(mis_fechas,rnorm(50), type = "l")
