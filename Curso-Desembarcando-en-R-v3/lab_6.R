# Curso Desembarcando en R

##############################################
## Lab 6 - Preparación de Datos con tidyverse
##############################################

# Preparación de datos 
library(funModeling)
library(tidyverse) 

heart_disease=as.tibble(heart_disease)


################################################
### Función `mutate`
################################################
# Permite crear variables nuevas

# crear variable mayor a 40 años
heart_disease2 = heart_disease %>% mutate(es_mayor_40 = age > 40)







# ifelse(condicion, por true, por false)
heart_disease2$nueva_var=ifelse(heart_disease$age > 40, "es mayor a 40 años", "es menor o igual a 40 años") 
select(heart_disease2, nueva_var)





# crear variable high o low basado en  max_heart_rate > 150
heart_disease3=heart_disease %>% mutate(estado_heart_rate=ifelse(max_heart_rate > 150, "high", "low"))
select(heart_disease3, max_heart_rate, estado_heart_rate)







# Remplazo de nulos
df_status(heart_disease)


v_na_1=is.na(heart_disease$num_vessels_flour)

heart_disease$num_vessels_flour[v_na_1]=999

v_na_2=is.na(heart_disease$thal)
heart_disease$thal[v_na_2]="missing"

heart_disease$thal=as.character(heart_disease$thal)
heart_disease$thal[v_na_2]="missing"
df_status(heart_disease$thal)

## dplyr
data_clean=heart_disease3 %>% mutate(num_vessels_flour2=replace_na(num_vessels_flour, 999),
                                     thal2=replace_na(as.character(thal), "missing")) %>% select(num_vessels_flour2, thal2)


df_status(data_clean)

# eliminar registros con nulos
data_clean2=na.omit(heart_disease3)


###########################################
## Lectura complementaria
###########################################

# Datos faltantes: Análisis, manejo e imputación: https://librovivodecienciadedatos.ai/preparacion-de-datos.html#datos_faltantes
# Tipos de datos (numéricos vs categóricos): https://librovivodecienciadedatos.ai/preparacion-de-datos.html#tipos_de_datos
# Manejando variables de alta cardinalidad (relacionado con columna 'unique' de df_status): http://librovivodecienciadedatos.ai/

##########################################
## Ejercicios!
##########################################
## Cargar el set de datos "data/bank.csv".




## 1 - Crear la variable "positive_balance", que valga 1 cuando
## 'balance > 0', y el valor 0 cundo balance es negativo.




## 2 - Crear un data frame que tenga la variable balance y positive_balance
## y verificar si anduvo el procedimiento




## 3 - Ordenar el resultado de 1) por positive_balance y luego por balance
## importante respetar ese orden... ¿por qué?



## 4a - Remplazar los nulos (creando otra variable) de `contact` por el string "missing".



## 4b - Verificar el resultado con freq y/o df_status.





## 5a - Crear un data frame que no contenga nulos.





## 5b - Verificar cantidad de registros antes y despues




## 6 - Crear una variable llamada "jobs_high_share" que tenga el valor "yes" cuando `job` es 
## management, blue-collar o technician. Luego verificar.




## 7 - La variable marital tiene 3 valores para 'single', hacer que solo tenga uno
## reemplazando todas las variaciones de 'single' a un unico valor. Tarea super comun en un proyecto!






