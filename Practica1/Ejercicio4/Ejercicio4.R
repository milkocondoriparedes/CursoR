#Nombre: Betty Mendoza Chuquiruna 20150497B
#Respuesta N4:
 
#a)El código muestra el uso de la función "class":
#-La clase esta explícita:
 f1 <- array(data=1:36,dim=c(3,3,4))
 class(f1)
[1] "array"

#-La clase esta implícita:
bar <- as.vector(f1)
class(bar)
[1] "integer"

#-La clase esta explícita:
baz <- as.character(bar)
class(baz)
[1] "character"

#-La clase esta explícita:
qux <- as.factor(baz)
class(qux)
[1] "factor"

#-La clase esta implícita:  
quux <- bar+c(-0.1,0.1)
class(quux)
[1] "numeric"

#b)El código muestra el uso de de coercer un vector numérico.
is.numeric(f1) + is.integer(f1)
[1] 2
is.numeric(bar) + is.integer(bar)
[1] 2
is.numeric(qux) + is.integer(qux)
[1] 0
is.numeric(baz) + is.integer(baz)
[1] 0
is.numeric(quux) + is.integer(quux)
[1] 1
f=factor(c(2,2,0,0,1),levels=c(0,1,2))
f
[1] 2 2 0 0 1
Levels: 0 1 2
as.numeric(f)
[1] 3 3 1 1 2

#c)El código muestra la coerción de los tipos de datos:
m<-matrix(c(34,0,1,23,1,2,33,1,NA,42,0,1,41,0,2),nrow=5,byrow=TRUE)
t<-as.data.frame(m)
> t
  V1 V2 V3
1 34  0  1
2 23  1  2
3 33  1 NA
4 42  0  1
5 41  0  2

d=as.data.frame(as.logical(m[,2]))
d
as.logical(m[, 2])
1              FALSE
2               TRUE
3               TRUE
4              FALSE
5              FALSE


t=as.data.frame(as.factor(m[,3]))
t
as.factor(m[, 3])
1                 1
2                 2
3              <NA>
4                 1
5                 2

 







