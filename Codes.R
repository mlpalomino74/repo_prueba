
# Comentarios con # estos se pintan sobre la consola pero no se ejecutan

#++++++++++++++++++++++++++++++++++++++++++++++++++#
# 1. Manejo de la biblioteca y gestion de paquetes #
#++++++++++++++++++++++++++++++++++++++++++++++++++#

### Paquetes instalados 
installed.packages()[,c(1,3,4)]

### Esta instalado un paquete? 
is.element("ggplot2",installed.packages()[,1])

### Instalar un paquete
install.packages("dplyr")

### Llamar el paquete
require('dplyr')
library('dplyr')

####  Que pasa cuando el paquete no esta instalado
library('rgdala')

### Como unload un paquete que no estoy usando
detach("package:dplyr", unload = TRUE)

### Older version 
require(devtools)
install_version("ggplot2", version = "3.3.2", repos = "http://cran.us.r-project.org")

### Cuantos paquetes hay disponibles en R?
available.packages()[,1:2]
nrow(available.packages())
is.element("dplyr",available.packages()[,1]) # Saber si un paquete existe
is.element("development",available.packages()[,1]) # Saber si un paquete existe
  
### Eliminar un paquetes 
remove.packages("dplyr") 

#+++++++++++++++++++++++++++#
# 2. Directorio de trabajo  # 
#+++++++++++++++++++++++++++#

# Limpiar memoria de R
list = ls() # Objetos en la memoria
rm() # Elinar objetos
rm(list = ls()) # Limipar todos los objetos en la memoria
cat("\f") # Limpiar la consoloa, tambien se puede hacer presionando las teclas ctrl + L)

# Fijar directorio de tabajo
getwd() # Obtener directorio de trabajo
#setwd("~/dropbox/teaching/taller de r/github/clases/clase 2") # Establecer directorio de trabajo

# Inspeccionar directorio de trabajo
dir(".")    # Carpetas en el directorio
list.files(".") # Archivos en el directorio
