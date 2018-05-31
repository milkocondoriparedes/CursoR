###PREG3
#Preg3.a
vec1 <- c(2,1,1,3,2,1,0)
vec2 <- c(3,8,2,2,0,0,0)

#Aqui vec1[1]=2, vec2[2]=8, entonces el la condicion vec1[1]+vec2[2]=10 es verdadera, por lo que se imprimira el mensaje
if((vec1[1]+vec2[2])==10){ cat("Imprime el resultado!") }

#vec1[1]=2,vec2[1]=3, como ambos enunciados son verdaderos, el mensaje se imprimira
if(vec1[1]>=2&&vec2[1]>=2){ cat("Imprime el resultado!") }

#La funcion all recibe un conjunto de vectres logicos y comprueba si todos son verdaderos,en esta linea vec2-vec1=(1,7,1,-1,-2,-1,0), con esto 
#El segundo (7) y sexto elemento (-1) de este nuevo vector deben cumplir que son menores que 7, como el segndo elemento no cumple, el resultado es falso, con lo que la cadena no se imprime
if(all((vec2-vec1)[c(2,6)]<7)){ cat("Imprime el resultado!") }

#La funcion is.na(x) crea un vector logico del tamaño de x cuyos elementos solo valdran TRUE si el elemento correspondiente de x es NA, y FALSE en caso contrario.
#La condicion en este caso debe ser lo contrario de la funcion is.na(x), asi, sera verdadero cando x sea diferente a NA.  Como vec2[3]=2,diferente a Na, la cadena se imprimirra
if(!is.na(vec2[3])){ cat("Imprime el resultado!") }

#Preg3.b
vec3<-vec1
for (i in 1: length(vec1)) 
{
  if(vec1[i]+vec2[i]>3)
  {
    vec3[i]<-vec1[i]*vec2[i]
  }
  else
  {
    vec3[i]<-vec1[i]+vec2[i]
  }
}
vec3

#Preg3.c
#Creamos unua funcion para almacenar el codigo
verificarMatr<-function(mymat)
{
  #Inicializamos un contador para comprobar cuantas veces se reemplaza la palabra AQUI
  contador<-0
  #Como la matriz es cuadrada, su longitud sera n^2, asi, la dimension de mymat sera sqrt(length(mymat)) ó tambien dim(mymat)[1]
  for (i in 1: sqrt(length(mymat)))
  {
    if(substring(mymat[i,i][1],1,1)=="g" || substring(mymat[i,i][1],1,1)=="G")
    {
      mymat[i,i]<-"AQUI"
      contador<-contador+1
    }
  }
  if(contador==0)
  {
    mymat<-diag(sqrt(length(mymat)))
  }
  mymat
}
#Probamos la funcion con las matrices dadas
mymat <- matrix(as.character(1:16),4,4)
verificarMatr(mymat)
mymat <- matrix(c("GREAT","ejercicioss","agua","hey"),2,2,byrow=T)
verificarMatr(mymat)
mymat <- matrix(c("DANDELION","Hyacinthus","Gerbera","MARIGOLD","geranium","ligularia","Pachysandra","SNAPDRAGON","GLADIOLUS"),3,3)
verificarMatr(mymat)
