Ejemplo de los siguientes graficos 

#Barras

#Realice un ejemplo los siguientes gráficos y explíquelos:

#· barras

water_potabilityfiltro = filter(water_potability, Sulfate <250 & Potability == 1)

View(water_potabilityfiltro)

plot(as.factor())

#TimeBased

mis_fechas <- seq(as.Date("2014/1/1"), by = "month", length = 50 ) 

plot(mis_fechas,rnorm(50), type = "l")

#Correlacion

View(water_potability)

plot(select(water_potability,Solids,Organic_carbon,Conductivity,ph,Turbidity))
