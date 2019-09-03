# Curso Desembarcando en R

####################################################
## Lab 2 - Filtrando y operando datos en con R base
####################################################





##########################################
## Filosofía de R para manejo de datos
##########################################
# creando un vector de character
v_prov=c("misiones", "cordoba", "rosario")
v_prov





# obteniendo un vector de comparacion (y lo asignamos a una variable para filtrar despues)
v_flag=v_prov=="rosario"

v_flag


# reemplazando rosario por chaco
v_prov[v_flag]





v_prov[v_flag]="chaco"





v_prov




vec2=c("A", "A", "B", "B", "C")

vec2[vec2=="A"]="A2"
vec2











## Filtrando data frames - valores faltantes (NA)
library(tidyverse)
data_holly=read_delim("data/HollywoodMovies.csv", delim = ",")

## Tambien sirve para filtrar: Obtener todas las peliculas cuyo LeadStudio sea "Sony"
v_flag_sony=data_holly$LeadStudio=="Sony"


v_flag_sony






# filtrando (1er intento):
data_sony_1=data_holly[v_flag_sony,]








## Introducción a nulos (NA)
is.na(data_holly$LeadStudio)





v_na_lead_studio=is.na(data_holly$LeadStudio)






# ok :D
data_sony_3=data_holly[v_flag_sony & !v_na_lead_studio,]



# Operadores lógicos

a=TRUE
a=T
b=FALSE
b=F

T & T
T & F

T | T
T | F

!a






###########################################
## Lectura complementaria
###########################################

# Datos faltantes o nulos: https://librovivodecienciadedatos.ai/preparacion-de-datos.html#datos_faltantes




##########################################
## Ejercicios!
##########################################
# Nota 1: Recuerden cargar todas las librerias necesarias si no lo hicieron.
# Nota 2: Fijense que su directorio de trabajo (working directory) sea "Curso Desembarcando en R"
#   sino, no les encontrará el archivo que estén leyendo de la carpeta data (ej: "data/HollywoodMovies.csv")


## 1- Obtener un data set con todas las peliculas que tienen NA en la columna `Genre`. 
# (tener cargado el data set data/HollywoodMovies.csv)



## 2 - Convertir la pelicula "Parker" en la más 
## popular de todas según la variable `RottenTomatoes` (valor de 100). Luego explorar los datos.

# copia para no perder los datos originales (buena practica)



## 3 - Crear un data frame que tenga todas las peliculas que posean la variable RottenTomatoes
## y ForeignGross nulas al mismo tiempo (tienen que combinar el 'is.na' con el '&')

