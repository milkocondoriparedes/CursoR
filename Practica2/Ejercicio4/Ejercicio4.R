#####PREGUNTA 4

###Pregnta 4.a

#codigo para la matriz

loopvec1 <- 5:7
loopvec2 <- 9:6
mat1 <- matrix(NA,length(loopvec1),length(loopvec2))
mat1

#bucle modificado

for(i in 1:length(loopvec1))
{
  mat1[i,]=loopvec1[i]*loopvec2
}
mat1

###Pregnta 4.b


cadena1<-c("Peter","Homer","Lois","Stewie","Maggie","Bart")
cadena2<-cadena1
for(i in 1:length(cadena1))
{
  cadena2[i]<-switch(cadena1[i],Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90, NA)
}
cadena2


###Pregunta 4.c


contador<-0
for(i in 1:length(unalista))
{
  if(length(dim(unalista[[i]]))==0)
  {
    #tam_elem<-length(unalista[[i]])
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
