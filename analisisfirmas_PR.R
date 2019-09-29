## FUNCION PARA LEER LOS ARCHIVOS DE LAS FIRMAS DEL ELECTRORADIOESPECTROMETRO CENTRO GEO ESPECIALIDAD GRUPO "B" 2019

library(curl)
library(RCurl)
library(rio)
library(dygraphs)

leer_firmas <<- function(id, summarize = TRUE) 
{
  ## CREAR LISTA DE ARCHIVOS PARA LEER
  ## CREA NOMBRE DE ARCHIVOS CON 5 DIGITOS (0´S A LA IZQUIERDA) SEGUN EL "id"
  filename <<- paste("https://raw.githubusercontent.com/cheespanther/analisis_firmas_PR_centrogeo/master/datos/ref",sprintf("%05d", id), ".asd",".txt", sep="")
  ## LEE ARCHIVOS SEGUN EL "id" Y EL DIRECTORIO DONDE SE ENCUENTREN
  datos <<- lapply(paste(filename), read.delim, header=TRUE) 

  return (datos)
}

p <- dygraph(datos_tabla) %>%
  dyOptions(labelsUTC = TRUE, fillGraph=TRUE, fillAlpha=0.1, drawGrid = FALSE, colors="#D8AE5A") %>%
  dyRangeSelector() %>%
  dyCrosshair(direction = "vertical") %>%
  dyHighlight(highlightCircleSize = 5, highlightSeriesBackgroundAlpha = 0.2, hideOnMouseOut = FALSE)  %>%
  dyRoller(rollPeriod = 1)
