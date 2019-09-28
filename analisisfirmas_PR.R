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
