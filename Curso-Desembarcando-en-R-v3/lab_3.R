# Curso Desembarcando en R


##########################################
## Lab 3 - Analisis Exploratorio de Datos
##########################################


## Carga y/o instalacion de paquetes
library(tidyverse)
library(funModeling)
library(Hmisc)











##########################################
## Carga de datos
##########################################
## Ya vienen con el paquete funModeling: heart_disease 
heart_disease=heart_disease




##########################################
## Análisis exploratorio de datos
##########################################

## Análisis inicial de datos: df_status
df_status(heart_disease)





## Gráficos de distribución (variable numérica): plot_num
plot_num(heart_disease)










## Descripción cuantitativa (números...): summary, describe, profiling_num
summary(heart_disease)
describe(heart_disease)
profiling_num(heart_disease)





## Gráficos de distribución (variable categorica): freq
freq(heart_disease)

tbl=freq(heart_disease$chest_pain, path_out = "graficos")

tbl










###########################################
## Lectura complementaria
###########################################

# Introducción al análisis numérico: https://librovivodecienciadedatos.ai/analisis-exploratorio-de-datos.html#analisis_numerico
# Análisis de variables numéricas: https://librovivodecienciadedatos.ai/analisis-exploratorio-de-datos.html#analisis-de-variables-numericas
# Análisis de variables categóricas: https://librovivodecienciadedatos.ai/analisis-exploratorio-de-datos.html#analisis-variables-categoricas
# ¿Qué son los percentiles?: https://librovivodecienciadedatos.ai/apendice.html#apendice-percentiles
# Valores outliers: https://librovivodecienciadedatos.ai/preparacion-de-datos.html#tratamiento_valores_atipicos







##########################################
## Ejercicios!
##########################################
# Nota 1: Recuerden cargar todas las librerias necesarias si no lo hicieron.
# Nota 2: Fijense que su directorio de trabajo (working directory) sea "Curso Desembarcando en R"
#   sino, no les encontrará el archivo que estén leyendo de la carpeta data (ej: "data/HollywoodMovies.csv")


## 1 - Cargar el set de datos "data/bank.csv".
## Los datos historicos reprentan si los clientes hicieron o no un deposito. 
## Indicado en la variable "deposit" (variable a predecir).

## 2 - Hacer una descripcion visual y numérica de las variables numericas (`plot_num`). 

# a) ¿Se observa algo raro?, ¿Qué variables parecen tener valores extremos o outliers?



# b) ¿Hay nulos (NA)?


  
# c) ¿Todas las variables están en los rangos correctos?




## 3 - Hacer una descripcion visual variables categoricas (función `freq`)
## ¿Se observa algo raro (como una mala carga de datos)? (ayuda: ver variable a predecir) 


## 5 - ¿Cuál es el rango de 'age' en donde se concentran el 80% de los datos?



## 6 - Remover los valores extremos de la variable age 
## asignandole el percentil 98 a todo lo que le supere. 

# 6a - Calcular percentil 98



# 6b - Obtener el vector flag (TRUE/FALSE) de todo lo que lo supere



# 6c - Asignar el valor de 6a), y verificar la distribución de nuevo







