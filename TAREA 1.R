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

COVID_19_Encuesta_a_estudiantes = ID %>% group_by(Age.of.Subject) %>%
  sumarise = (n=n())

#e.	Arrege 

View(arrange(COVID_19_Encuesta_a_estudiantes,Rating.of.Online.Class.experience))


#f.	Mutate 

COVID_19_Encuesta_a_estudiantes = mutate(COVID_19_Encuesta_a_estudiantes,TimeSocialMediaPerWeek= Time.spent.on.social.media*7L)

#G.Select



#h.	Debe entregar el código, los resultados de ejecución y una pequeña descripción de la idea que expuso en el modelo exploratorio 


#3.	Una investigación realizada por la Universidad Hispanoamérica detalla que los salarios mínimos para ciertos países se conforman de la siguiente forma: 

salarios=c(432.21,239.48,249.94,373.22,233.86,366,331.11,258.86,349.20,31.60)


#a. Encontrar el salario promedio de estos países.


names(salarios)=c('Argentina','Bolivia','Brazil','Chile','Colombia','Ecuador','Paraguay', 'Peru','Uruguay', 'Venezuela')

View(data.frame(salarios))

mean(salarios)


#b. Encontrar la desviación estándar de la muestra.


sd(salarios)


#c. Encuentre los salarios mínimos más altos y más bajos de la muestra

min(salarios)

max(salarios)



#4.	De la base de datos proporciona, genere las estructuras donde muestre la cantidad de facturas hechas por empleado, además muestre el nombre de los empleados. Ejemplo: 



#5.	A continuación, se les muestra el ingreso de unidades de sacos de café por un periodo de tiempo son: 7, 6, 5, 8, 7, 7, 7, 5, 6, 8 . Calcular la desviación estándar.


SacosCafeXtiempo=c( 7L, 6L, 5L, 8L, 7L, 7L, 7L, 5L, 6L, 8L)

sd(SacosCafeXtiempo)


#6.	Considere los datos en el ejercicio 5. Hallar los percentiles 0, 25, 50, 75 y 100

p = c(0.25,0.5,0.75)

quantile(SacosCafeXtiempo)


#7.	Realice una pequeña investigación sobre qué es stringr de la colección de paquetes Tidyvers 

#Coleccion de paquetes.

#El Tidyverse es una colección de paquetes de R que comparten una filosofía y API común para el tratamiento de datos de tipo tabular. A los que se les llama "tidy data" (datos ordenados).La filosofía básica de las funciones de los paquetes del Tidyverse es recibir datos "tidy" y devolver como resultados datos del mismo tipo. Al ser los datos de entrada y salida de las funciones del mismo tipo es posible encadenar diferentes funciones para realizar así tareas complejas de una forma eficiente. 

#Los paquetes que forman parte del tidyverso son:
  
#readr (ya la estamos usando)
#dplyr (Clase anterior)
#tidyr (Hoy)
#ggplot2 (Próxima clase)
#purrr (En clase sobre loops)
#forcats (Para variables categóricas)
#stringr (Para carácteres, Palabras)

#Fuentes:

#Rodriguez, D.(2021). Introducción al Tidyverse. https://www.analyticslane.com/2021/02/10/introduccion-al-tidyverse/

#Ano nimo. (S.F). Capítulo 3 El Tidyverso y tidyr. https://derek-corcoran-barrios.github.io/Libro/_book/tidyverso.html

