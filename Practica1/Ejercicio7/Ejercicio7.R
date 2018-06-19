#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K

#Respuesta N7:

#(a)El codigo muestra el almacenamiento del vector "f1":
f1<-c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968,8133)
f1
[1]  13563 -14156 -14319  16981  12921  11979   9568   8833 -12968   8133

#El codigo muestra el uso de IS.FINITE para mostrar que elementos son finitos:
f1[is.finite(f1^75)]
[1] 11979  9568  8833  8133

#El codigo muestra el uso de WHICH para encontrar los elementos que cumplen una determinada condicion:
f1[-which(f1^75==-Inf)]
[1] 13563 16981 12921 11979  9568  8833  8133

#(b)El codigo muestra el uso de la funcion MATRIX para almacenar la matriz "varMatriz":
varMatriz<-matrix(c(77875.4,-35466.25,-39803.81,27551.45,-73333.85,55976.34,23764.3,36599.69,76694.82,-36478.88,-70585.69,47032),nrow=3,ncol=4)
varMatriz
         [,1]      [,2]     [,3]      [,4]
[1,]  77875.40  27551.45 23764.30 -36478.88
[2,] -35466.25 -73333.85 36599.69 -70585.69
[3,] -39803.81  55976.34 76694.82  47032.00

#El codigo muestra la salida de "varMatriz" cuando se eleva a la 65 y se divide por infinito:
varMatriz1<-varMatriz^65/Inf
varMatriz1
     [,1] [,2] [,3] [,4]
[1,]  NaN    0    0    0
[2,]    0  NaN    0  NaN
[3,]    0  NaN  NaN    0
#Se usa IS.NAN para mostrar que elementos son NaN, asi como se usa WHICH para encontrar la ubicacion de los elementos que cumplen la
#condicion anterior:
which(is.nan(varMatriz1),arr.ind=T)
    row col
[1,]   1   1
[2,]   2   2
[3,]   3   2
[4,]   3   3
[5,]   2   4

#El codigo muestra el uso de !IS.NAN para mostrar los elementos de "varMatriz" que al elevarlos a la 67 y añadirles
#el infinito no resultan NaN:
varMatriz[!is.nan(varMatriz^67+Inf)]
[1]  77875.40 -35466.25 -39803.81  27551.45  55976.34  23764.30  36599.69
[8]  76694.82 -36478.88  47032.00
#El codigo muestra los elementos de "varMatriz" que cumplen la condicion de que al elevarlos a la 67 no son iguales al
#infinito negativo:
varMatriz[varMatriz^67!=-Inf]
[1]  77875.40 -35466.25 -39803.81  27551.45  55976.34  23764.30  36599.69
[8]  76694.82 -36478.88  47032.00
#Se observa que los 2 vectores anteriores son identicos.

#El codigo muestra los elementos de "varMatriz" que cumplen cualquiera de las condiciones, que al elevarlos a la 67
#resulten infinito negativo o(|) finito:
varMatriz[varMatriz^67==-Inf|is.finite(varMatriz^67)]
[1] -35466.25 -39803.81  27551.45 -73333.85  23764.30  36599.69 -36478.88
[8] -70585.69

#(c)El codigo muestra el almacenamiento del vector "f2":
f2<-c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)
#En el vector "f2" existen 2 NULL, estos no existen en el vetor, por lo que su longitud sera igual a 8(Verdadera),veamos:
length(f2)
[1] 8
#Al llamar which(x=is.na(x=f2)) se ubicara los elementos de "f2" que sean NA o NaN, en este caso resultara 4 y 8(Falsa),veamos:
which(x=is.na(x=f2))
[1] 4 8
#Al llamar is.null(x=f2) esta solo verificara si el vector "f2" es NULL o no(Falsa),veamos:
is.null(x=f2)
[1] FALSE

