#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K

#Respuesta N2:
 
#(a)El codigo muestra el uso de la funcion matrix para generar una matriz, en este caso ordenada por filas:
x<-matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow=4,ncol=2,byrow=T)
x
     [,1] [,2]
[1,]  4.3  3.1
[2,]  8.2  8.2
[3,]  3.2  0.9
[4,]  1.6  6.5

#(b)El codigo muestra la eliminacion de la cuarta fila de la matriz "x":
y<-x[-4,]
y
     [,1] [,2]
[1,]  4.3  3.1
[2,]  8.2  8.2
[3,]  3.2  0.9
#Asi como se usa funcion dim para mostrar las dimensiones de la matriz "y":
dim(y)
[1] 3 2

#(c)El codigo muestra el uso de la funcion sort para el ordenamiento de la segunda columna de la matriz "x":
x[,2]=sort(x[,2])
x
     [,1] [,2]
[1,]  4.3  0.9
[2,]  8.2  3.1
[3,]  3.2  6.5
[4,]  1.6  8.2
 
#(d)El codigo muestra la eliminacion de la cuarta columna y primera fila de la matriz "x":
z<-matrix(x[-4,-1])
z
     [,1]
[1,]  0.9
[2,]  3.1
[3,]  6.5

#(e)El codigo muestra la seleccion de la tercera y cuarta fila de la matriz "x":
w<-matrix(x[3:4,],nrow=2)
w
     [,1] [,2]
[1,]  3.2  6.5
[2,]  1.6  8.2

#(f)El codigo muestra el uso de la funcion diag:
matrix(c(x[4,2],x[1,2],x[4,1],x[1,1]),nrow=2)-1/2*diag(w)
     [,1] [,2]
[1,]  6.6  0.0
[2,] -3.2  0.2

#(g)El codigo muestra el uso de la funcion diag para generar la matriz diagonal "A" y la matriz identidad "I" 
A<-diag(c(2,3,5,-1))
A
     [,1] [,2] [,3] [,4]
[1,]    2    0    0    0
[2,]    0    3    0    0
[3,]    0    0    5    0
[4,]    0    0    0   -1
I<-diag(c(1,1,1,1))
I
     [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    1    0    0
[3,]    0    0    1    0
[4,]    0    0    0    1
#Asi como se usa la funcion solve que calcula la inversa de la matriz "A": 
IA<-solve(A)
IA
     [,1]      [,2] [,3] [,4]
[1,]  0.5 0.0000000  0.0    0
[2,]  0.0 0.3333333  0.0    0
[3,]  0.0 0.0000000  0.2    0
[4,]  0.0 0.0000000  0.0   -1
#Por ultimo se verifica que "IA*A-I" es una matriz nula:
IA*A-I
     [,1] [,2] [,3] [,4]
[1,]    0    0    0    0
[2,]    0    0    0    0
[3,]    0    0    0    0
[4,]    0    0    0    0
