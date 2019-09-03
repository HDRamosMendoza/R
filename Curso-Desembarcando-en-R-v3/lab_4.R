# Curso Desembarcando en R

##############################################
## Lab 4 - Preparación de Datos con tidyverse
##############################################

# Preparación de datos 
library(tidyverse) 
library(funModeling)

heart_disease=as.tibble(heart_disease)











################################################
### Función `filter`
################################################
### Filtrando registros basados en distintas condiciones.

# obtener todos los registros de genero = male
filter(heart_disease, gender=="male")



# Obtener todos los de pacientes `male` y cuyo chest_pain sea `1`:
mis_datos=filter(heart_disease, gender=="male" & chest_pain==1)






# es equivalente a:
mis_datos2=filter(heart_disease, gender=="male", chest_pain==1)
mis_datos3= heart_disease %>% filter(gender=="male", chest_pain==1)







# Usando el conector lgico OR:
# fasting_blood_sugar sea 0 ó que resting_electro sea 0
mis_datos4=heart_disease %>% filter(fasting_blood_sugar==0 | resting_electro==0)








# Registros seleccionados por variable categorica:
# Variable thal con valor 3 o 6, es variable categórica
heart_disease %>% filter(thal %in% c("3","6"))


df_status(heart_disease$thal)

heart_disease$thal %in% c("3","6")



# Otro ejemplo con una condicion between de variable numerica: 
# resting_blood_pressure entre 130 y 145
mis_datos5=heart_disease %>% filter(resting_blood_pressure > 130 & resting_blood_pressure < 145)



###########################################
## Lectura complementaria
###########################################

# dplyr official page: https://dplyr.tidyverse.org/
# Introduction to dplyr: https://dplyr.tidyverse.org/articles/dplyr.html


##########################################
## Ejercicios!
##########################################
## Cargar el set de datos "data/bank.csv".



## 1a) - crear un data frame que tenga todos los clientes que hicieron un depositvo




## 1b) - crear un data frame que tenga todos los clientes que NO hicieron un depositvo





## 2 - Analizar las metricas que devuelve `profiling_num` para la variable `balance`,
##del los datos de 1a) y 1b) 




## 3 - Crear una tabla  que contenga `marital` igual a single o married.



