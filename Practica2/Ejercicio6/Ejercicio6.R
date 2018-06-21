#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#RespuestaN6:

#(a)Se tiene la siguiente lista de matrices:

matlist <- list(matrix(c(T,F,T,T),2,2),matrix(c("a","c","b","z","p","q"),3,2),matrix(1:8,2,4))
matlist
[[1]]
      [,1] [,2]
[1,]  TRUE TRUE
[2,] FALSE TRUE

[[2]]
     [,1] [,2]
[1,] "a"  "z" 
[2,] "c"  "p" 
[3,] "b"  "q" 

[[3]]
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8

#El siguiente codigo muestra la traspuesta de la lista de matrices:
for(i in 1:length(matlist)){matlist[[i]] <- t(matlist[[i]])}
matlist
[[1]]
     [,1]  [,2]
[1,] TRUE FALSE
[2,] TRUE  TRUE

[[2]]
     [,1] [,2] [,3]
[1,] "a"  "c"  "b" 
[2,] "z"  "p"  "q" 

[[3]]
     [,1] [,2]
[1,]    1    2
[2,]    3    4
[3,]    5    6
[4,]    7    8

#Ahora se usara la funcion LAPPLY que realiza operaciones con los elementos de una lista y te devuelve una lista
#donde el primer argumento es la lista y el segundo argumento la operacion, en este caso es la transpuesta (t).
#La cual hara lo mismo que el codigo anterior, veamos:
matlist <- list(matrix(c(T,F,T,T),2,2),matrix(c("a","c","b","z","p","q"),3,2),matrix(1:8,2,4))
matlist<-lapply(matlist,t)
matlist
[[1]]
     [,1]  [,2]
[1,] TRUE FALSE
[2,] TRUE  TRUE

[[2]]
     [,1] [,2] [,3]
[1,] "a"  "c"  "b" 
[2,] "z"  "p"  "q" 

[[3]]
     [,1] [,2]
[1,]    1    2
[2,]    3    4
[3,]    5    6
[4,]    7    8

#(b)Se almacena la matriz 4x4x2x3 en el objeto "qux":
qux <- array(96:1,dim=c(4,4,2,3))
qux
, , 1, 1

     [,1] [,2] [,3] [,4]
[1,]   96   92   88   84
[2,]   95   91   87   83
[3,]   94   90   86   82
[4,]   93   89   85   81

, , 2, 1

     [,1] [,2] [,3] [,4]
[1,]   80   76   72   68
[2,]   79   75   71   67
[3,]   78   74   70   66
[4,]   77   73   69   65

, , 1, 2

     [,1] [,2] [,3] [,4]
[1,]   64   60   56   52
[2,]   63   59   55   51
[3,]   62   58   54   50
[4,]   61   57   53   49

, , 2, 2

     [,1] [,2] [,3] [,4]
[1,]   48   44   40   36
[2,]   47   43   39   35
[3,]   46   42   38   34
[4,]   45   41   37   33

, , 1, 3

     [,1] [,2] [,3] [,4]
[1,]   32   28   24   20
[2,]   31   27   23   19
[3,]   30   26   22   18
[4,]   29   25   21   17

, , 2, 3

     [,1] [,2] [,3] [,4]
[1,]   16   12    8    4
[2,]   15   11    7    3
[3,]   14   10    6    2
[4,]   13    9    5    1

#El codigo muestra el uso de la funcion SAPPLY para hacer un bucle implícito que obtiene los elementos diagonales 
#de todas las matrices de la segunda capa de "qux":
sapply(lapply(list(qux[,,2,1],qux[,,2,2],qux[,,2,3]),diag),c)
     [,1] [,2] [,3]
[1,]   80   48   16
[2,]   75   43   11
[3,]   70   38    6
[4,]   65   33    1
#Este muestra la matriz pedida.

#El codigo muestra el uso de la funcion SAPPLY para hacer un bucle implícito que devuelve las dimensiones de cada 
#una de las tres matrices formadas accediendo a la cuarta columna de cada matriz en "qux", independientemente de
#la capa o bloque, enlazado por otra funcion APPLY que hace otro bucle implícito y encuentra la suma de filas de esa
#estructura:
apply((sapply(lapply(list(qux[,4,,1],qux[,4,,2],qux[,4,,3]),dim), c)),1,sum)
[1] 12  6
#Este muestra el vector pedido.
