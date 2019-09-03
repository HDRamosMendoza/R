# Curso Desembarcando en R

##############################################
## Lab 7 - Preparación de Datos con tidyverse
##############################################

# Preparación de datos 
library(funModeling)
library(tidyverse) 

heart_disease=as.tibble(heart_disease)

################################################
### Funciónes básicas 
################################################
# mean, sd, sum, max, min, quantile
mean(heart_disease$age)
sd(heart_disease$age)

quantile(heart_disease$age, probs = c(0.1, 0.9))





################################################
### Función `group_by` y `summarise`
################################################

## Agrupando registros con `group_by` y sumarizando con `summarise`

# obtener promedio de max_heart_rate por has_heart_disease
group_by(heart_disease, has_heart_disease) %>% summarise(prom_hr=mean(max_heart_rate))




# obtener promedio de num_vessels_flour por has_heart_disease
group_by(heart_disease, has_heart_disease) %>% summarise(prom_vess=mean(num_vessels_flour, na.rm = T),
                                                         sd_vess=sd(num_vessels_flour, na.rm = T),
                                                         prom_hr=mean(max_heart_rate)
                                                         )


# agrupar solo en variables numéricas
res=group_by(heart_disease, has_heart_disease) %>% summarise_if(is.numeric, mean, na.rm=T)


# agrupar solo determinadas variables

v_vars=c("age", "max_heart_rate")
group_by(heart_disease, has_heart_disease) %>% summarise_at(v_vars, mean, na.rm=T)


group_by(heart_disease, has_heart_disease) %>% summarise_at(vars(age, max_heart_rate), mean, na.rm=T)
 



###########################################
## Lectura complementaria
###########################################

# dplyr official page: https://dplyr.tidyverse.org/
# Introduction to dplyr: https://dplyr.tidyverse.org/articles/dplyr.html




##########################################
## Ejercicios!
##########################################
## cargar datos "data/bank_2.csv"



## 1 - Obtener el total de registros de la variable 'marital'



## 2 - Calcular el porcentaje de 1). Ayuda: el total de registros se puede calcular antes y luego usarlo




## 3 - Calcular el promedio y la mediana (func: `median`) de todas las variables que
## sean numéricas (obviamente), abierto por la variable `deposit`. Remover NA de `deposit` ántes.




## 4 - Calcular el promedio  de todas las variables que
## abierto por la variable `deposit` y `marital`




## 5 - Calcular la distribución de `education`, abierto por `deposit` (googlear función `table`)



# en porcentaje:


