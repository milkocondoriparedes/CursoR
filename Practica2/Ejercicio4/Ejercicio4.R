#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#RespuestaN4:

#(a)Sea el codigo dado para la matriz "mat1" y sean los vetores "loopvec1" y "loopvec2":
loopvec1 <- 5:7
loopvec2 <- 9:6
mat1 <- matrix(NA,length(loopvec1),length(loopvec2))
mat1
     [,1] [,2] [,3] [,4]
[1,]   NA   NA   NA   NA
[2,]   NA   NA   NA   NA
[3,]   NA   NA   NA   NA

#Y sea un bucle anidado, dado por el siguiente codigo:
for(i in 1:length(loopvec1)){
  for(j in 1:length(loopvec2)){ 
    mat1[i,j] <- loopvec1[i]*loopvec2[j] 
   } 
}
mat1
     [,1] [,2] [,3] [,4]
[1,]   45   40   35   30
[2,]   54   48   42   36
[3,]   63   56   49   42

#Ahora modificamos el bucle anidado anterior usando un solo bucle FOR:
for(i in 1:length(loopvec1))
{
  mat1[i,]=loopvec1[i]*loopvec2
}
mat1
     [,1] [,2] [,3] [,4]
[1,]   45   40   35   30
[2,]   54   48   42   36
[3,]   63   56   49   42

#(b)El codigo muestra la modificacion del vector "cadena1" a un vector de los valores numéricos relacionado
#a la cadena de caracteres:
cadena1<-c("Peter","Homer","Lois","Stewie","Maggie","Bart")
for(i in 1:length(cadena1))
{
#Se usa el comando SWITCH para cambiar los elementos del vector "cadena1", segun lo mencionado anteriormente:
  cadena1[i]<-switch(cadena1[i],Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90, NA)
}
cadena1
[1] NA   "12" NA   NA   "90" "56"


#(c)El codigo es un bucle anidado que busca cualquier vector "unalista" y cuenta las matrices presentes, para el
#cual usaremos la variable "contador" iniciada en 0:
unalista<-list(aa=c(3.4,1),bb=matrix(1:4,2,2),
          cc=matrix(c(T,T,F,T,F,F),3,2),dd="cadena aqui", 
          ee=list(c("hola","tu"),matrix(c("hola","there"))), 
          ff=matrix(c("red","green","blue","yellow")))
contador<-0
#Se inicia el bucle:
for(i in 1:length(unalista))
{ 
#La variable "contador" se matiene si el tamaño de la dimension de "unalista" es igual 0:
  if(length(dim(unalista[[i]]))==0)
  {
    #tam_elem<-length(unalista[[i]])
    elemento<-unalista[[i]]
    #Se anida otro bucle dentro del bucle:
    for (j in 1:length(elemento))
    {
      #La variable "contador" se matiene si el tamaño de la dimension de "unalista" es igual 0:
      if(length(dim(elemento[[j]]))==0)
      {
           contador<-contador+0
      }
      #La variable "contador" aumenta en 1 si el tamaño de la dimension de "unalista" es distinto de 0:
      else
      {contador<-contador+1}
    }
   
  }
#La variable "contador" aumenta en 1 si el tamaño de la dimension de "unalista" es distinto de 0:
  else
  {
    contador<-contador+1
  }
}
contador
[1] 4

#Cambiamos el vector "unalista" en el codigo anterior para el siguiente ejemplo:
unalista <- list("salio algo raro",as.vector(matrix(1:6,3,2)))
contador<-0
for(i in 1:length(unalista))
{ 
  if(length(dim(unalista[[i]]))==0)
  {
    elemento<-unalista[[i]]
    for (j in 1:length(elemento))
    {
      if(length(dim(elemento[[j]]))==0)
      {
           contador<-contador+0
      }
      else
      {contador<-contador+1}
    }
   
  }
  else
  {
    contador<-contador+1
  }
}
contador
[1] 0

#Cambiamos el vector "unalista" en el codigo anterior para el siguiente ejemplo:
unalista<- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),rbind(1:10,100:91))
contador<-0
for(i in 1:length(unalista))
{ 
  if(length(dim(unalista[[i]]))==0)
  {
    elemento<-unalista[[i]]
    for (j in 1:length(elemento))
    {
      if(length(dim(elemento[[j]]))==0)
      {
           contador<-contador+0
      }
      else
      {contador<-contador+1}
    }
   
  }
  else
  {
    contador<-contador+1
  }
}
contador
[1] 2
