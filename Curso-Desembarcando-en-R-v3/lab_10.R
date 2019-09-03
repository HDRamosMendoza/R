# Curso Desembarcando en R

##############################################
## Lab 10 - Análisis de correlación
##############################################

# Preparación de datos 
library(tidyverse) 
library(funModeling)
library(corrr)





##########################################################
## Correlaciones entre variables
##########################################################

heart_disease %>% correlate()




mat_cor=heart_disease %>% select_if(is.numeric) %>% correlate()




cor_hd=heart_disease %>% select_if(is.numeric) %>% correlate() %>% stretch()





heart_disease$has_heart_disease_2=ifelse(heart_disease$has_heart_disease=="yes", 1, 0) 




cor_hd_2=heart_disease %>% select_if(is.numeric) %>% correlate() %>% stretch()






## Correlacion basada en teoría de la información
res_rank_info=var_rank_info(data = heart_disease, target = "has_heart_disease")
  




## Graficando las correlaciones!
cross_plot(data = heart_disease, input = c("thal", "age"), target = "has_heart_disease")

heart_disease$age2=equal_freq(heart_disease$age, 5)

cross_plot(data = heart_disease, input = "age2", target = "has_heart_disease")


plotar(data = heart_disease, input = "age", target = "has_heart_disease", plot_type = "boxplot")

plotar(data = heart_disease, input = "age", target = "has_heart_disease", plot_type = "histdens")






###########################################
## Lectura complementaria
###########################################


# Análisis de correlaciónes: https://librovivodecienciadedatos.ai/analisis-exploratorio-de-datos.html#correlacion
# Correlación basada en teoría de la información: https://librovivodecienciadedatos.ai/analisis-exploratorio-de-datos.html#correlacion-basada-en-la-teoria-de-la-informacion
# Using corrr: https://cran.r-project.org/web/packages/corrr/vignettes/using-corrr.html

# Aspectos generales de la selección de variables: https://librovivodecienciadedatos.ai/seleccion-mejores-variables.html#analisis-del-objetivo
# Usando cross_plot: https://librovivodecienciadedatos.ai/seleccion-mejores-variables.html#analisis_objetivo_cross_plot
# Usando boxplots en plotar:  https://librovivodecienciadedatos.ai/seleccion-mejores-variables.html#analisis-numerico-diagramas-caja
# Usando histogramas en plotar: https://librovivodecienciadedatos.ai/seleccion-mejores-variables.html#analisis-numerico-histogramas-densidad

##########################################
## Ejercicios!
##########################################
## cargar datos "data/bank_2.csv"




## 1 - Encontrar las correlaciones de las var numericas entre si.




## 2 - Encontrar todas las correlaciones lineales entre las
## variables de entrada y la salida 




## 3 - Encontrar las variables mas importantes según el gain ratio (puede tardar)




######################################
## Gráficos para modelos predictivos
######################################
## Analizar la correlación entre las variables de entrada y la salida 'deposit'.
## Si no le pasan 'input', entonces corre para todas las variables ;)

## 4 - Usar función cross_plot



## 5 - Usar función plotar ('boxplot' e 'histdens')




## 6 - Usar función rplot() del paquete corrr (googlear) en el set de datos mtcars
## mtcars ya esta cargado en el entorno de R como iris



