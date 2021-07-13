#Nota: escoger un objetivo de análisis

#Realice un análisis de la base de datos Northwind de usar

#· Conexiones SQL

#· Dplyr


library('DBI')
library('odbc')
library('dbplyr')
install.packages("ggplot2")
install.packages("plotly")
library('plotly')

DB_Northwind <- DBI::dbConnect(odbc::odbc(),
                                Driver = "SQL Server",
                                Server = "dbtedamssql.uh.ac.cr",
                                Database = "Northwind",
                                UID = rstudioapi::askForPassword("Database user"),
                                PWD = rstudioapi::askForPassword("Database password"),
                                Port = 1433)

Stock<-dbGetQuery(DB_Northwind,"select * from [production].[stocks]")
View(Stock)

#Dplyr
#agrupe por tienda y sume la cantidad de todos los productos

Agrupacion_por_tienda= Stock %>% group_by(store_id)%>%
  summarise(sum(quantity))



View(Agrupacion_por_tienda)

#· Gpplot, plot, qplot o plotly


qplot
