install.packages("dplyr")
library(dplyr)


install.packages("tidyvers")
library(tidyvers)



#1.	Cree un vector que contenga las notas de 10 estudiantes, debe utilizar la función names(), además aplique un plot. 

NotasEstudiantes= c(10L,6L,5L,8L,8L,7L,9L,9L,6L,5L)

names(NotasEstudiantes)=c("Sofia","Alex","Marco","Isabel","Jose","Diana","Susan","Gary","Maria","Juan")

View(data.frame(NotasEstudiantes))

plot(NotasEstudiantes, type = 'l')

#2.Genere una base de datos en XLS, impórtela (trate que la base de datos contenga columnas cuantitativas, es decir campos como, por ejemplo, edad, año de nacimiento, factores, cantidad de ventas, cantidad de compras, boolean), genere un proceso exploratorio y de transformación de datos, donde utilice las siguientes funciones: 

COVID_19_Encuesta_a_estudiantes = data.frame(COVID_19_Encuesta_a_estudiantes)
class(COVID_19_Encuesta_a_estudiantes)

head(COVID_19_Encuesta_a_estudiantes)

#a.	Guardar datos en variables temporales, es decir hijas de la variable de importación 

Var_CovidDatos=select(COVID_19_Encuesta_a_estudiantes,ID,Age.of.Subject, Time.spent.on.Online.Class,Rating.of.Online.Class.experience,  Time.spent.on.self.study, Time.spent.on.fitness, Time.spent.on.sleep,  Time.spent.on.social.media, Prefered.social.media.platform,Time.spent.on.TV, Number.of.meals.per.day, Change.in.your.weight)

View(Var_CovidDatos)


#b.	Al menos 2 operaciones aritméticas entre vectores



#c.	Filter

View(filter(Var_CovidDatos,Prefered.social.media.platform=="Instagram"))


#d.	Group by 

dataAgrupada=iris%>%group_by()%>%
  summarise()

#e.	Arrege 

View(arrange(COVID_19_Encuesta_a_estudiantes,Rating.of.Online.Class.experience))


#f.	Mutate 

COVID_19_Encuesta_a_estudiantes = mutate(COVID_19_Encuesta_a_estudiantes,TimeSocialMediaPerWeek= Time.spent.on.social.media*7L)

#G.Select


#h.	Debe entregar el código, los resultados de ejecución y una pequeña descripción de la idea que expuso en el modelo exploratorio 
