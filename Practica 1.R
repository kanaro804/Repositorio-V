#Practica 1 / Ejercicio 1
#Realice un ejemplo de las estructuras if y for, utilice la cantidad de datos diferentes de las que se utilizaron en clase.

edad = 50

if (edad >= 21) {
  
  print("Aceptado")
  
}else{
  
  print("Rechazado")
  
}

#For 

Final= 80

for (i in 1:Final) {
  
 print(i)
}

#Declare un tipo de variable double, integer y carácter

#integer
VariableInteger = 48L
typeof(VariableInteger)


#Double 
variableDouble =8.15
typeof(variableDouble)

#String
VariableString ="Navarro"

#3. Cree un vector de enteros

Ve =c(2L,3L,4L,6L,7L,9L)
  
#4. Cree un vector con los meses del año

VM= c ('enero','febrero','marzo','abril','mayo','junio', 'julio','agosto','septiembre','octubre','noviembre','diciembre')

#5. Cree un vector con nombre de personas

VPe= c('Karla Navarro', 'Yency Orozco', 'Franklin Madrigal', 'Brayner Salmeron')

#6. Cree los siguientes vectores

    #Vector 1: Nombre de la película

VP= c('Sherk', 'Sherk 2L', 'Sherk tercero', 'Sherk felices para siempre')


    #Vector 2: Puntuación

VPU= c(7.9, 7.2, 6.1, 6.3)

    #Vector 3: antes del 2005 (TRUE/FALSE)

VF= c(True,True,False,False)

#7. Saque las siguientes funciones con base algún vector numérico del ejercicio 6 (Vector 2: Puntuación), haga investigación de los mismos

length(VPU)
#numero de elementos en ´ x

min(VPU)
#valor m´inimo en el objeto x

max(VPU)
#valor maximo en el objeto ´ x

sum(VPU)
#suma de los elementos de x

mean(VPU)
#promedio de los elementos de x

median(VPU)
#mediana de los elementos de x (valor que mas se repite)

sort(VPU)
#ordena los elementos de x en orden ascendente

plot(VPU)
#Grafico

unique(VPU)
#si x es un vector o un marco de datos, devuelve un objeto similar pero suprimiendo elementos duplicados


which.max(VPU)
#devuelve el ´indice del elemento maximo de ´ x

which.min(VPU)
#devuelve el ´indice del elemento miinimo de x

Sqrt(VPU)
#raiz cuadrada


#8. Genere un vector con valores del 1 al 100

Vector_seq = (1:100)

#9. Genere un vector con valores del 1 al 100 de 10 en 10

vector_seq = seq(1,100, by=10)
