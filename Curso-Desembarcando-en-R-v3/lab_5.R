# Curso Desembarcando en R

##############################################
## Lab 5 - Preparación de Datos con tidyverse
##############################################

# Preparación de datos 
library(funModeling)
library(tidyverse) 

heart_disease=as.tibble(heart_disease)



################################################
### Función `arrange`
################################################
### Usando arrange para ordenar registros

# ordenando el dataframe anterior: 
# variable age
d1=heart_disease %>% arrange(age)

# variable chest_pain y age:
d2=heart_disease %>% arrange(chest_pain, age)

# orden descendente:
d3=heart_disease %>% arrange(-age)






################################################
### Función `select`
################################################
# Seleccionando algunas variables con `select` 
# thal, age, chest_pain
d4=heart_disease %>% select(thal, age, chest_pain)



# Con el simbolo menos (`-`) eliminamos variables
d5=d4 %>% select(-chest_pain)


# seleccionamos 2 y luego todas
d6=heart_disease %>% select(age, thal, chest_pain, everything())





# Con select tambien se puede renombrar variables:
d7=select(heart_disease, edad=age, everything())
df_status(d7)


# Verbo `rename`:
d8=heart_disease %>% rename(edad=age)










# Nombre de variable como texto
variables=c("age", "chest_pain")

select(heart_disease, variables)


# Seleccionando por tipo de dato
d9=select_if(heart_disease, is.numeric)

# is.character
# is.factor

is.character(heart_disease$age)






################################################
### Función `rename`
################################################
df_status(heart_disease)
select_if(heart_disease)

heart_disease$gender=as.character(heart_disease$gender)

df_status(select_if(heart_disease, is.numeric))

df_status(select_if(heart_disease, is.factor))

df_status(select_if(heart_disease, is.character))




###########################################
## Lectura complementaria
###########################################

# dplyr official page: https://dplyr.tidyverse.org/
# Introduction to dplyr: https://dplyr.tidyverse.org/articles/dplyr.html





##########################################
## Ejercicios!
##########################################
## Cargar el set de datos "data/bank.csv".



## 1 - Crear un data frame con las variables day, month y deposit.



## 2 - Ordenar el set de datos por la columna balance, descendenemente.



## 3 - Seleccionar todas las variables numericas, basado en el set de datos del 2)
## (no hagan trampa: no hacerlo una a una) ;)



## 4 - Crear un data frame que tenga primero `deposit`, y luego todas las demas



## 5 - De los datos del punto 4, renombrar la variable `age` a `edad`







