# Curso Desembarcando en R

##########################################
## Lab 1 - Desembarcando en R
##########################################
# Hola, soy un comentario :D !

# Instalación de paquetes
install.packages("tidyverse")

# Carga y/o instalación de paquetes
library(tidyverse)

##########################################
## Carga de datos
##########################################
# nombre de archivo: data/winequality-white.csv 
# (si no carga revisar el "working directory" donde estan parados): 
# Session > Set working directory > Choose directory
d_wine=read_delim("data/winequality-white.csv", delim = ";")









##########################################
## Analisis inicial
##########################################
## Impresion de los datos
d_wine




## Revision de cantidad de filas/columnas 

# Cantidad de registros
nrow(d_wine)

# Cantidad de columnas
ncol(d_wine)

## Nombre de columnas
colnames(d_wine)


## 
glimpse(d_wine)












################################ 
## Accediendo a los datos
################################
# todo el registro nro 2
d_wine[2,]


# a un valor: registro nro 2 columna "pH"
d_wine[2,"pH"]

# reemplazando el contenido
d_wine[2,"pH"]=99
d_wine[2,"pH"]

# Notacion d_wine[fila, columna]
d_wine[c(1,2,3), "pH"]




# Otras maneras de acceder a un valor: operador $
d_wine$pH



# Y como es un vector... podemos acceder a 1 valor
d_wine$pH[2]






##########################################
## Estructura de datos
##########################################
## Tipos de datos (character, factor, integer, numeric)

# integer
a=7

# numeric
b=3.14

# character
c="hola mundo!"

# factor
d=factor("a")



## Creando un vector
v1=c(2,3,4,5,"hola")

v2=c("A", "A", "B")


v3=factor(v2)

v4=c(5,34,1)

## Creando un data frame / tibble
df=data.frame(var1=v4, var2=v2)
tib=tibble(var1=v4, var2=v2)

df
tib













###########################################
## Lectura complementaria
###########################################

# Estado de salud de un conjunto de-datos: https://librovivodecienciadedatos.ai/analisis-exploratorio-de-datos.html#estado-de-salud-de-un-conjunto-de-datos
# Introduction to readr (pertenece al tidyverse, y tiene la función read_delim entre otras):  https://cran.r-project.org/web/packages/readr/vignettes/readr.html

##########################################
## Ejercicios!
##########################################
# Nota 1: Recuerden cargar todas las librerias necesarias si no lo hicieron.
# Nota 2: Fijense que su directorio de trabajo (working directory) sea "Curso Desembarcando en R"
#   sino, no les encontrará el archivo que estén leyendo de la carpeta data (ej: "data/HollywoodMovies.csv")

## 1 - Cargar el set de datos "data/HollywoodMovies.csv" (ojo con el separador!). 


## 2 - Cuantos registros y columnas tiene?



## 3 - Imprimir una variable Budget, y luego el registro numero 10





