# Curso Desembarcando en R

##############################################
## Lab 8 - Preparación de Datos con tidyverse
##############################################

# Preparación de datos 
library(tidyverse) 




################################################
### Cruzando datos entre tablas (joins)
################################################

# `dplyr` provee varias funciones para hacer join entre tablas: inner, left, right, full, semi y anti join.

band_members

band_instruments






# Obteniendo los registros que coinciden en ambos lados
inner_join(band_members, band_instruments, by="name")






# Obteniendo los registros basados en el lado izquierdo
left_join(band_members, band_instruments, by="name")




# Obteniendo los registros del lado izquierdo, que NO estan en el derecho
anti_join(band_members, band_instruments, by="name")



# Si la clave tiene distinto nombre
band_instruments2=band_instruments %>% rename(name2=name)
band_instruments2

band_members

left_join(band_members,band_instruments2, by=c("name"="name2"))

####

left_join(band_members,band_instruments)

band_members %>% left_join(band_instruments)


########################
## Lab sin ejercicios
########################
