#####PREGUNTA 6

##Pregunta 6.a
#Se tiene la siguiente lista de matrices:

matlist <- list(matrix(c(T,F,T,T),2,2),matrix(c("a","c","b","z","p","q"),3,2),matrix(1:8,2,4))

#la operacion que el ciclo hace es la traspuesta de las matrices de la lista,
#la funcion lapply realiza operaciones con los elementos de una lista y te devuelve una lista
#donde el primer argumento es la lista, el segundo argumento la operacion: en este caso t (traspuesta) 

matlist<-lapply(matlist,t)
matlist

#Con esto obtenemos el mismo resultado que el ciclo

##Pregunta 6.b

#Escribe un bucle implícito que obtenga los elementos diagonales de todas las matrices de
#segunda capa para producir la siguiente matriz:
#[,1] [,2] [,3]
#[1,] 80 48 16
#[2,] 75 43 11
#[3,] 70 38 6
#[4,] 65 33 1

qux <- array(96:1,dim=c(4,4,2,3))
sapply(lapply(list(qux[,,2,1],qux[,,2,2],qux[,,2,3]),diag),c)


##Pregnta 6.b

#Escribe un bucle implícito que devuelva las dimensiones de cada una de las tres matrices
#formadas accediendo a la cuarta columna de cada matriz en qux, independientemente de
#la capa o bloque, enlazado por otro bucle implícito que encuentre la suma de filas de esa
#estructura, resultando en el siguiente vector:

#[1] 12 6

apply((sapply(lapply(list(qux[,4,,1],qux[,4,,2],qux[,4,,3]),dim), c)),1,sum)
