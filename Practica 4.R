##  Practica  4

#Realice un análisis de la base de datos Northwind de usar

#· Conexiones SQL

#· Dplyr

#· Gpplot, plot, qplot o plotly

library("DBI")
library("odbc")
library("dbplyr")
install.packages ("ggplot2")
install.packages (" plotly ")
library (plotly)

#· Conexiones SQL

DB_Northwind <- DBI::dbConnect(odbc::odbc(),
                                Driver = "SQL Server",
                                Server = "dbtedamssql.uh.ac.cr",
                                Database = "Northwind",
                                UID = rstudioapi::askForPassword("Database user"),
                                PWD = rstudioapi::askForPassword("Database password"),
                                Port = 1433)



Stock= dbGetQuery(DB_Northwind,"select * from [production].[stocks]")


View(Stock)

#· Dplyr

agrupe por tienda y sume la cantidad de todos los productos

#· Gpplot, plot, qplot o plotly

qplot (store_id,product_id, data =Stock)

, color = Species , size =  Petal.Width ,
xlab = " Sepal " , ylab = " Petal " , principales = " Titulo " )
