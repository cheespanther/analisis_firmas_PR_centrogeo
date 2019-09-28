## FUNCION PARA LEER LOS ARCHIVOS DE LAS FIRMAS DEL ELECTRORADIOESPECTROMETRO CENTRO GEO ESPECIALIDAD GRUPO "B" 2019

  #DIRECTORIO DE ARCHIVOS: "~/R/firmas_PR/R"

  #"directory": DIRECTORIO DONDE SE ENCUENTRAN LOS ARCHIVOS
  #"id": NUMEROS DE LOS ARCHIVOS QUE SE DESEAN LEER

leer_firmas <<- function(directory, id, summarize = TRUE) 
{
  ## ESTABLISHES DIRECTORY WHERE FILES ARE FOUND
  ## 
  setwd(directory)
  
  ## CREAR LISTA DE ARCHIVOS PARA LEER
  ## CREA NOMBRE DE ARCHIVOS CON 5 DIGITOS (0´S A LA IZQUIERDA) SEGUN EL "id"
  filename <<- paste("ref", sprintf("%05d", id), ".asd",".txt", sep="")
  ## LEE ARCHIVOS SEGUN EL "id" Y EL DIRECTORIO DONDE SE ENCUENTREN
  dataselect <<- lapply(paste(directory,"/",filename,sep=""), read.delim, header=TRUE)
  
  return (dataselect)
}
