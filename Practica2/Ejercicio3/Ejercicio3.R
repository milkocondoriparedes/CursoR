#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#RespuestaN3:

#(a)Se crea los vectores "vec1" y "vec2":
vec1<-c(2,1,1,3,2,1,0)
vec1
[1] 2 1 1 3 2 1 0
vec2<-c(3,8,2,2,0,0,0)
vec2
[1] 3 8 2 2 0 0 0

#Aqui vec1[1]=2, vec2[2]=8, entonces el la condicion vec1[1]+vec2[2]=10 es verdadera, por lo que se imprimira el mensaje.
if((vec1[1]+vec2[2])==10){ cat("Imprime el resultado!") }
Imprime el resultado!

#Aqui vec1[1]=2, vec2[1]=3, como ambos enunciados son verdaderos, el mensaje se imprimira.
if(vec1[1]>=2 && vec2[1]>=2){ cat("Imprime el resultado!") }
Imprime el resultado!

#La funcion ALL recibe un conjunto de vectores logicos y comprueba si todos son verdaderos.
#vec2-vec1 = (1,7,1,-1,-2,-1,0), asi:
#El segundo (vec2-vec1)[2]=7 y (vec2-vec1)[6]=-1, se observa que 7 no cumple la condicion,
#por lo que el resultado es falso y el mensaje no se imprime.
if(all((vec2-vec1)[c(2,6)]<7)){ cat("Imprime el resultado!") }

#La funcion IS.NA crea un vector logico cuyos elementos solo valdran TRUE si el elemento correspondiente es NA, y FALSE en caso contrario.
#La condicion en este caso debe ser lo contrario de la funcion IS.NA.
#Como vec2[3]=2, diferente a NA, el mensaje se imprimira.
if(!is.na(vec2[3])){ cat("Imprime el resultado!") }
Imprime el resultado!

#(b)El codigo muestra la multiplicacion los elementos correspondientes de los dos vectores juntos si su suma es mayor que 3. 
#En caso no lo sea el codigo muestra la suma de los dos elementos.
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
[1] 6 8 3 6 2 1 0

#(c)Creamos una funcion para almacenar el codigo:
verificarMatr<-function(mymat)
{
  #Inicializamos un contador para comprobar cuantas veces se reemplaza la palabra AQUI
  contador<-0
  #Como la matriz es cuadrada, su longitud sera n^2, asi, la dimension de mymat sera sqrt(length(mymat)) o tambien dim(mymat)[1]
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

#Probamos la funcion con las matrices dadas:
mymat <- matrix(as.character(1:16),4,4)
verificarMatr(mymat)
    [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    1    0    0
[3,]    0    0    1    0
[4,]    0    0    0    1

mymat <- matrix(c("GREAT","ejercicioss","agua","hey"),2,2,byrow=T)
verificarMatr(mymat)
     [,1]   [,2]         
[1,] "AQUI" "ejercicioss"
[2,] "agua" "hey"   

mymat <- matrix(c("DANDELION","Hyacinthus","Gerbera","MARIGOLD","geranium","ligularia","Pachysandra","SNAPDRAGON","GLADIOLUS"),3,3)
verificarMatr(mymat)
     [,1]         [,2]        [,3]         
[1,] "DANDELION"  "MARIGOLD"  "Pachysandra"
[2,] "Hyacinthus" "AQUI"      "SNAPDRAGON" 
[3,] "Gerbera"    "ligularia" "AQUI"

