#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#Respuesta N4:
 
#(a)El codigo usa la funcion CLASS para mostrar la clase del objeto:

f1<-array(data=1:36,dim=c(3,3,4))
class(f1)
[1] "array"
#La clase esta explícita:

bar<-as.vector(f1)
class(bar)
[1] "integer"
#La clase esta implícita:

baz<-as.character(bar)
class(baz)
[1] "character"
#La clase esta explícita:

qux <- as.factor(baz)
class(qux)
[1] "factor"
#La clase esta explícita:

quux <- bar+c(-0.1,0.1)
class(quux)
[1] "numeric"
#La clase esta implícita:  

#(b)El codigo muestra la suma de IS.NUMERIC + IS.INTEGER de los objetos anteriores:
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

#Se usa FACTOR para crear un factor "fac" con los niveles 0, 1 y 2 de los resultados anteriores: 
fac<-factor(c(2,2,0,0,1),levels=c(0,1,2))
fac
[1] 2 2 0 0 1
Levels: 0 1 2
#Se usa AS.NUMERIC para coercer "fac" en un vector numerico:
as.numeric(fac)
[1] 3 3 1 1 2

#(c)El codigo muestra el uso de la funcion MATRIX en el almacenamiento de la matriz "matriz":
matriz<-matrix(c(34,0,1,23,1,2,33,1,NA,42,0,1,41,0,2),nrow=5,byrow=TRUE)
matriz
     [,1] [,2] [,3]
[1,]   34    0    1
[2,]   23    1    2
[3,]   33    1   NA
[4,]   42    0    1
[5,]   41    0    2

#Se muestra la coercion de la matriz "matriz" a un DATA FRAME:
dframe<-as.data.frame(matriz)
dframe
  V1 V2 V3
1 34  0  1
2 23  1  2
3 33  1 NA
4 42  0  1
5 41  0  2

#Se coerce la segunda columna del DATA FRAME "dframe" para que tenga un valor logico:
log<-as.data.frame(as.logical(dframe[,2]))
log
  as.logical(dframe[, 2])
1                   FALSE
2                    TRUE
3                    TRUE
4                   FALSE
5                   FALSE

#Se coerce la tercera columna del DATA FRAME "dframe" para que tenga un valor de factor:
fa<-as.data.frame(as.factor(dframe[,3]))
fa
  as.factor(dframe[, 3])
1                      1
2                      2
3                   <NA>
4                      1
5                      2

