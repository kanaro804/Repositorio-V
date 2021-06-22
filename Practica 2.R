Practica #2

#1. Genere un dataframe

#Vector 1: Nombre de la película

VP= c('Sherk', 'Sherk 2L', 'Sherk tercero', 'Sherk felices para siempre')


#Vector 2: Puntuación

VPU= c(7.9, 7.2, 6.1, 6.3)

#Vector 3: antes del 2005 (TRUE/FALSE)

VF=c('True','True','False','False')

names(VP)=c('Peli1','Peli2','Peli3','Peli4')

Datos=data.frame(VP,VPU,VF)

View(Datos)



#2

#A
Insuficiente=c("I")
Bueno=c("B")
Regular=c("R")
Medio=c("M")
Alto=c("A")

resultados=c("A","A", "M", "M", "M", "M", "M","I","B","B","R","I","I","I","R","R",
             "R","R","R","R","R","R","R","R","R", "M", "M", "M", "M", "M", "M",
             "M", "M", "M", "M", "M", "M", "M","A","A")

#B. Frecuencia Absoluta

FrecuenciaAbsoluta= table(resultados)

FrecuenciaAbsoluta

#C. Frecuencia Relativa

FrecuenciaRelativa= FrecuenciaAbsoluta / length(resultados)

FrecuenciaRelativa

#3. Genere las estructuras necesarias para crear el siguiente dataframe 

nombres = c ("hugo", "paco","luis","paty","maria","ruben","gaby")

edades = c (28L,26L,32L,24L,33L,23L,43L)

sueldos = c (12.5, 13.5, 14.8, 7.1, 57.7, 45.3, 34.2)

genero = c ("M","M","M","F","F","M","F")

pasatiempos = c ("musica","musica","estudio","videojuegos","musica","musica","videojuegos")

EjercicioTres= data.frame(nombres,edades,sueldos,genero,pasatiempos)

View(EjercicioTres)


#4. Cree un dataframe con los siguientes insumos

#Author DataFlair

int_vec <- c(1,2,3)

char_vec <- c("a", "b", "c")

bool_vec <- c(TRUE, TRUE, FALSE)

Salario <- c(5000,56700,6000)

DatosDos= data.frame(int_vec,char_vec,bool_vec,Salario)

View(DatosDos)

DatosDos$Salario+(0.05*DatosDos$Salario)

#data$salario = data$salario + (data$salario +0.05)

#Parte 2 Caso estadístico



genero = c ("Hombre","Mujer","Hombre","Mujer","Hombre","Mujer",
            "Hombre","Mujer","Hombre","Hombre")



edadcaso = c (10L,20L,30L,40L,50L,55L,60L,63L,67L,68L)



glucemia_basal = c (123,230,180,164,210,220,193,202,152,185)



tratamiento = c (F,T,F,F,T,F,T,T,F,F)


#dataframe
mispacientes = data.frame(genero,edadcaso,glucemia_basal,tratamiento)
View (mispacientes)




#Haga una descripción de datos cuantitativos

max(mispacientes$edadcaso)

min(mispacientes$edadcaso)

mean(mispacientes$edadcaso)

sd(mispacientes$edadcaso)

round(sd(mispacientes$edadcaso),2)

quantile(mispacientes$edadcaso)

#Saque la frecuencia absoluta de la glucemia basal

table(mispacientes$genero)

#Saque la frecuencia relativa de genero

table(mispacientes$genero)/length(mispacientes$genero)

#Investigue alguna forma de representar gráficamente las variables edad y genero


