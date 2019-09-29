## FUNCION PARA LEER LOS ARCHIVOS DE LAS FIRMAS DEL ELECTRORADIOESPECTROMETRO CENTRO GEO ESPECIALIDAD GRUPO "B" 2019

  #DIRECTORIO DE ARCHIVOS: "~/R/firmas_PR/R"

  #"directory": DIRECTORIO DONDE SE ENCUENTRAN LOS ARCHIVOS
  #"id": NUMEROS DE LOS ARCHIVOS QUE SE DESEAN LEER

library(curl)
library(RCurl)
library(rio)

leer_firmas <<- function(id, summarize = TRUE) 
{
  ## CREAR LISTA DE ARCHIVOS PARA LEER
  ## CREA NOMBRE DE ARCHIVOS CON 5 DIGITOS (0´S A LA IZQUIERDA) SEGUN EL "id"
  filename <<- paste("https://raw.githubusercontent.com/cheespanther/analisis_firmas_PR_centrogeo/master/datos/ref",sprintf("%05d", id), ".asd",".txt", sep="")
  ## LEE ARCHIVOS SEGUN EL "id" Y EL DIRECTORIO DONDE SE ENCUENTREN
  datos <<- lapply(paste(filename), read.delim, header=TRUE) 

  return (dataselect)
}
