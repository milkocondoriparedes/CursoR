
#FALTA PARTE B
#####PREGUNTA 5

###Pregunta 5.a
#Escribe un bucle while que calcule y almacena como un nuevo objeto el factorial de cualquier
#número entero entero no negativo al decrementar minum por 1 en cada repetición del código.
#Usando este ciclo, confirma lo siguiente:

#• Qué el resultado de usar minum <- 5 es 120.
#• Qué usando minum <- 12 produce 479001600.
#• El valor de minum <- 0 devuelve correctamente 1.

#Llamaremos xfactorial a nuestro codigo que calculara el factorial
#Almacenamos un numero en minum
#Se elige el valor, primero minum = 0

minum<-0

##A partir de aqui es el codigo de xfactorial
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



#Ahora minum=5
minum<-5

##A partir de aqui es el codigo de xfactorial
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

#Ahora minum=12
minum<-12

##A partir de aqui es el codigo de xfactorial
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


##Pregnta 5.b
