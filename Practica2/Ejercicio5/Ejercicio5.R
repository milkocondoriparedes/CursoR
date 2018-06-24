#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#RespuestaN5:

#(a)El codigo muestra un bucle WHILE que calcula y almacena como un nuevo objeto el factorial de cualquier
#numero entero no negativo al decrementar la variable "minum" por 1 en cada repetición del codigo.
#La variable "xfactorial" almacenara el resultado del factorial:

#La variable "minum" se iniciara en 0 , lo cual tendra que devolver 1 en el resultado:
minum<-0
#Se usa la condicion para que no se permitan numeros negativos:
if(minum<0)
{
  cat("No se permiten numeros negativos")
}else
{
  #Se usa la condicion para que "minum" no falle cuando es 0 o 1:
  if(minum==0||minum==1)
    {xfactorial<-1}
  else
  {
    #Se guarda en "xfactorial" el primer valor de "minum":
    xfactorial<-minum
    #Se crea un "auxiliar" que guarda a "minum":
    auxiliar<-minum
    #Se usa el bucle WHILE que sale cuando "auxiliar" toma el valor de 1:
    while(auxiliar > 1)
    { 
      #La variable "xfactorial" va guardando el resultado"
      xfactorial<-xfactorial*(auxiliar-1)
      #Mientras que "auxiliar" va disminuyendo en 1:
      auxiliar<-auxiliar-1
    }
  }
}
xfactorial
[1] 1

#Veamos el caso para "minum" igual a 5:
minum<-5
if(minum<0)
{
  cat("No se permiten numeros negativos")
}else
{
  if(minum==0||minum==1)
    {xfactorial<-1}
  else
  {
    xfactorial<-minum
    auxiliar<-minum
    while(auxiliar > 1)
    {
      xfactorial<-xfactorial*(auxiliar-1)
      auxiliar<-auxiliar-1
    }
  }
}
xfactorial
[1] 120

#Veamos el caso para "minum" igual a 12:
minum<-12
if(minum<0)
{
  cat("No se permiten numeros negativos")
}else
{
  if(minum==0||minum==1)
    {xfactorial<-1}
  else
  {
    xfactorial<-minum
    auxiliar<-minum
    while(auxiliar > 1)
    {
      xfactorial<-xfactorial*(auxiliar-1)
      auxiliar<-auxiliar-1
    }
  }
}
xfactorial
[1] 479001600

#(b)Se completa el codigo en la parte de la funcion WHILE con el uso de SUBSTR para extraer 
#el único carácter de "unacadena" en la posición "index", veamos:
unacadena <- "R fever"
index <- 1
ecount <- 0
resultado <- unacadena
while(ecount<2 && index<=nchar(unacadena)){
  if (substr(unacadena,index,index) == "e" || substr(unacadena,index,index) == "E" )
  {
    ecount <- ecount + 1
  }
  if(ecount == 2)
  {
    resultado<-substr(unacadena,1,index-1)
  }
  index <- index +1
}
resultado
[1] "R fev"

