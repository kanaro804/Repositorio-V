#Para la elaboración de esta tarea se debe utilizar las bases proporcionadas por el profesor

library(dplyr)
library(tidyverse)
library("DBI")
library("odbc")
library("dbplyr")
library(ggplot2)


#1. Seleccione una base datos y realice un análisis exploratorio

#U.S. International Air Traffic data(1990-2020)

summary(International_Report_Departures)

#Lung Cancer DataSet

#https://www.kaggle.com/yusufdede/lung-cancer-dataset


#b. Debe generar al menos 4 plots explicando el análisis que sacó de cada uno

#1

plot(as.factor(International_Report_Departures$Year))

#En este grafico podemos encontrar a traves del tiempo desde el año 1990 hasta el 2020 cuales han sido el movimiento de los vuelos internacionales, el cual se puede ver que su cambio ha sido de manera creciente hasta el año 2020, el cual hipotericamente podriamos asociarlo con el COVID y la suspension que hubo por meses de los vuelos

#2

plot(as.factor(International_Report_Departures$carriergroup))

#Con este plot podemos visualizar cual es el grupo de carriers con mas presencia en la base de datos siendo el grupo 1 el que mas se repite en la base de datos 

#3

GrupoCarrierFil= filter(International_Report_Departures,carriergroup=='0')

plot(as.factor(GrupoCarrierFil$usg_apt))

#Esto muestra los codigos de los aeropuertos que pertenecen al grupo 1 de los carriers


#4

totalfltrado=filter(International_Report_Departures,Year=='2020', Month=='3')

plot(as.factor(totalfltrado$Charter))

#Nos muentra los chapter del año 2020 y del mes de marzo


#c. Haga la búsqueda de correlación de variables y explíquelas 

plot(select(lung_cancer_examples,Age,Smokes,Result))

#Aqui podemos ver la relacion entre la edad, el habito de fumado y el resultado entre cancer de pulmon y no 


#d. Utilice mínimo 4 funciones de dplyr para manipular datos

#1. SELECT

DatosIRD= select(International_Report_Departures,Year,Month,airlineid,carrier,type,Scheduled,Charter)

View(DatosIRD)

#2. FILTER

View(filter(DatosIRD,carrier=='AC'))



#3. Arrange

view(arrange(DatosIRD,Year))


#4. GROUP BY

DataAgrupada=DatosIRD%>%group_by(Month)%>%
  summarise(Promedio=mean(Year))
  



#e. Cree al menos 2 funciones
