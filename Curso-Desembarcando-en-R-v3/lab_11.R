# Curso Desembarcando en R

##########################################
## Lab 11 - Creando un modelo predictivo
##########################################

# Carga de librerias
library(randomForest)
library(funModeling)
library(tidyverse)


heart_disease=as.tibble(heart_disease)









## Pequeña preparación de datos:

# 1) nulos 
df_status(heart_disease)
heart_disease_clean=na.omit(heart_disease)

# 2) selección y transformación de variables
heart_disease_clean = select(heart_disease_clean, -heart_disease_severity) %>% 
  mutate(has_heart_disease=as.factor(has_heart_disease))








## Creando la muestra de entrenamiento
# vector con las posiciones 
ix_tr=get_sample(heart_disease_clean, percentage_tr_rows = 0.7)


# set entrenamiento
heart_disease_train=heart_disease_clean[ix_tr, ]

# set test
heart_disease_test=heart_disease_clean[-ix_tr, ]






## Generando el modelo predictivo
mi_modelo=randomForest(has_heart_disease ~ ., heart_disease_train)



varImpPlot(mi_modelo)












# viendo la variable que mas influye, vs la que menos
cross_plot(data = heart_disease_clean, 
           input = c("max_heart_rate", "fasting_blood_sugar"),
           target="has_heart_disease")












# Genereando la probabilidad de la clase yes
score_predictions=predict(mi_modelo, 
                          heart_disease_test, 
                          type = 'prob')


heart_disease_test$score=score_predictions[,2]



# Validación
gain_lift(data = heart_disease_test, score = "score", target = "has_heart_disease") 















###########################################
## Lectura complementaria
###########################################

# ¿Por qué (y qué es) scorear?: https://librovivodecienciadedatos.ai/desempe%C3%B1o-modelo.html#scoring_de_datos
# Validando con gain_lift: https://librovivodecienciadedatos.ai/desempe%C3%B1o-modelo.html#ganancia_y_lift








##########################################
## Ejercicios!
##########################################

## Cargar el set de datos "data/bank.csv".



## 1 - Preparar los datos:

## Predecir variable deposit en función de: deposit, age, job, marital y education.
## Crear data set que tenga todas las columnas mencionadas.
## Random forest no anda con nulos ni variables character. 
## Sacar los nulos y convertir las variables character a factor (pista: mutate_if)
## Todo se puede hacer en 1 sola linea ;)
## El data set debe llamarse: data2


## Verificando


## 2 - Generar set de datos de entranamiento llamado data2_tr y set de datos testing: data2_ts.
## La cantidad de datos de validación debe ser del 20%

# set de entrenamiento

# set de testing



## 3 - Crear modelo predictivo llamado 'fit1'


## 4 - Generar variable de score (seleccionar la columna de default = 'yes'), para los datos:

# a) De entrenamiento:

# b) De testing:


## 5 - Hacer inspección visual, verificando la clase verdadera (columna deposit), vs el score



## 6 - Graficar curva gain/lift para ambos scores

# Entrenamiento




# Validación





