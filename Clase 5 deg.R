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


export(x=data_xls , file="output/data_excel.xlsx")

export(x=data_xls , file="output/data_r.rds")
#Convert
convert(in_file = "input/datos_censo.csv" , out_file="output/data_r.rds")

#Explorar bases de datos
data(package="dplyr")
library(dplyr)
#Obtener datos
db = as_tibble(x = starwars)
##Primeras cinco obs de la base que se estudiará
head(x = db , n = 5) ## pinta sobre la consola las primeras 5 observaciones de "db"
tail(x = db)
str(object = mtcars)
#Bases muy grandes (forma de describir)
skim(data = db)
##Manipulación de variables
db = rename(.data = db , weigth=mass , height_cm=height) ## de la librería dplyr
colnames(db)

colnames (db) [9]="género"

#TODO EN MAYÚSCULA
df=select_all(.tbl = db , toupper)

#Arreglar columnas
colnames(data_csv)
data_csv2=clean_names(data_csv)
colnames(data_csv2)
