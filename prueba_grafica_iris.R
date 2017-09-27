#Author: Camila Arias 
#udfjc 240917
#-----------------------------------
# Grafica relaciones entre tres variables de un dataset

#1. Instalar paquetes (quitar comment)

#install.packages("XLConnect") #Library dataset xls
#install.packages("car") #Library 
#libreria para cargar archivos .mat --->library(R.matlab)

#code ejemplo carga de un dataset .mat
#--------------------------
#data <- readMat('C:/Users/user/Documents/R/inputs.mat')
#data = lapply(data, unlist, use.names=FALSE)
#df <- as.data.frame(data) #dataset queda guardado como df
#---------------------------------
library(car)
library(datasets)
data(iris)

#---- separa columnas
sepalL <- iris$Sepal.Length #Guarda en sepalL, la columna 
                            #con el nombre Sepal.Length del dataset iris.
sepalW <- iris$Sepal.Width
petalL <- iris$Petal.Length
petalW <- iris$Petal.Width

#----- separa clases
clases <- iris$Species #guarda los datos de las clases
#--------
#grafica 3 caracteristicas x,y,z. Agrupados por groups
scatter3d(x = sepalW, y = sepalL, z = petalL, groups = clases,
          surface=FALSE, ellipsoid = TRUE,
          surface.col = c("#23fca9", "#ef0000","#ef0ff0"),sphere.size = 1.2)

