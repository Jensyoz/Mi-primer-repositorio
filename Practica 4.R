##  Practica  4

#Realice un análisis de la base de datos Northwind de usar

#· Conexiones SQL

#· Dplyr

#· Gpplot, plot, qplot o plotly

library("DBI")
library("odbc")
library("dbplyr")

DB_Northwind <- DBI::dbConnect(odbc::odbc(),
                                Driver = "SQL Server",
                                Server = "dbtedamssql.uh.ac.cr",
                                Database = "Northwind",
                                UID = rstudioapi::askForPassword("Database user"),
                                PWD = rstudioapi::askForPassword("Database password"),
                                Port = 1433)



Stock= dbGetQuery(DB_Northwind,"select * from [production].[stocks]")

View(Stock)

