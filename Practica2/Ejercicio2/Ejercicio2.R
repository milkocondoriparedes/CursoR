#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#RespuestaN2:

#Al usar la funcion HELP con cada una de la opciones para obtener informacion sobre sus argumentos:
help(array)
#Se obtiene: array(data = NA, dim = length(data), dimnames = NULL).
#El estilo de coincidencia del primer argumento es posicional y el del segundo es exacto, juntos hacen un estilo mixto:
array(8:1,dim=c(2,2,2))
, , 1

     [,1] [,2]
[1,]    8    6
[2,]    7    5

, , 2

     [,1] [,2]
[1,]    4    2
[2,]    3    1

help(rep)
#Se obtiene: rep(x, times = 1, length.out = NA, each = 1), para "x" vector.
#El primer argumento (1:2) es un vector, mientras que el segundo argumento es un entero. Estilo de coincidencia posicional.
rep(1:2,3)
[1] 1 2 1 2 1 2

help(seq)
#Se obtiene: seq(from = 1, to = 1, by = ((to - from)/(length.out - 1)),length.out = NULL, along.with = NULL, ...).
#En el ejemplo todos los argumentos llevan nombre. Estilo de coincidencia es exacto.
seq(from=10,to=8,length=5)
[1] 10.0  9.5  9.0  8.5  8.0

help(sort)
#Se obtiene: sort.int(x, partial = NULL, na.last = NA, decreasing = FALSE,method = c("auto", "shell", "quick", "radix"), index.return = FALSE).
#El primer argumento es exacto y el segundo argumento es exacto. Estilo de coincidencia: exacto.
sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3))
[1] 3.0 2.0 2.0 1.3 1.0 1.0 0.3

help(which)
#Se obtiene: which(x, arr.ind = FALSE, useNames = TRUE) para "x" vector o array.
#Solo posee un argumento con estilo de coincidencia posicional.
which(matrix(c(T,F,T,T),2,2))
[1] 1 3 4


#Se obtiene: which(x, arr.ind = FALSE, useNames = TRUE) para "x" vector o array.
#El primer argumento es posicionaly el segundo argumento es parcial. Estilo de coincidencia mixto.
which(matrix(c(T,F,T,T),2,2),a=T)
     row col
[1,]   1   1
[2,]   1   2
[3,]   2   2

