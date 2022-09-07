#Iván Arturo
#7 de septiembre del 2022
## instalar/llamar pacman SIEMPRE HACERLO
rm(list-ls())

require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # funcion skim: describe un conjunto de datos
       janitor, # función tabyl: frecuencias relativas
       dplyr) # contiene conjuntos de datos.

##Importar datos
data_csv = import(file="input/datos_censo.csv" , skip=6 , encoding="UTF-8")

data_xls = import(file="input/datos_excel.xlsx" , skip=9)
