#Nombre: Betty Mendoza Chuquiruna 20150497B
#Respuesta N2:
 
 #a)El código muestra el uso de la función matriz:
x<-matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow=4,ncol=2,byrow=T)
x
     [,1] [,2]
[1,]  4.3  3.1
[2,]  8.2  8.2
[3,]  3.2  0.9
[4,]  1.6  6.5

#b)El código muestra la forma de eliminación de una columna o matriz:
y<-x[-4,]
y
     [,1] [,2]
[1,]  4.3  3.1
[2,]  8.2  8.2
[3,]  3.2  0.9
 dim(y)
[1] 3 2

#C)El código muestra el uso de la función sort para el ordenamiento en una columna de la matriz:

x[,2]=sort(x[,2],FALSE)
x
     [,1] [,2]
[1,]  4.3  0.9
[2,]  8.2  3.1
[3,]  3.2  6.5
[4,]  1.6  8.2
 
#d)El código muestra la forma de eliminación de una columna y fila:
y<-matrix(x[-4,-1],ncol=1)
y
     [,1]
[1,]  0.9
[2,]  3.1
[3,]  6.5

#e)El código nos muestra la selección de filas de una matriz:
 y<-matrix(x[3:4,],nrow=2)
 y
     [,1] [,2]
[1,]  3.2  6.5
[2,]  1.6  8.2

#f)El código muestra el uso de la función diag:
matrix(c(x[4,2],x[1,2],x[4,1],x[1,1]),nrow=2)-1/2*diag(y)
     [,1] [,2]
[1,]  6.6  0.0
[2,] -3.2  0.2

#g)El código muestra el uso de función solve: 
A=matrix(c(2,0,0,0,0,3,0,0,0,0,5,0,0,0,0,-1),nrow=4,byrow=T)
A
     [,1] [,2] [,3] [,4]
[1,]    2    0    0    0
[2,]    0    3    0    0
[3,]    0    0    5    0
[4,]    0    0    0   -1
I=matrix(c(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1),nrow=4,byrow=T)
I
     [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    1    0    0
[3,]    0    0    1    0
[4,]    0    0    0    1
solve(A)%*%A-I
     [,1] [,2] [,3] [,4]
[1,]    0    0    0    0
[2,]    0    0    0    0
[3,]    0    0    0    0
[4,]    0    0    0    0
