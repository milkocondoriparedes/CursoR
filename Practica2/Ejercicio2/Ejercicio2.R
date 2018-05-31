
###PREG2
#Al usar la funcion help con cada una de la opciones para obtener informacion sobre sus argumentos, obtenemos lo siguiente:

#array(data = NA, dim = length(data), dimnames = NULL)
#El estilo de coincidencia del primer argumento es posicional y el del segundo es exacto, juntos hacen un estilo mixto 
array(8:1,dim=c(2,2,2))

#rep(x, times = 1, length.out = NA, each = 1), para x un vector
#El primer argumento (1:2) es un vector, mientras que el segundo argumento es un entero. Estilo de coincidencia posicional 
rep(1:2,3)

#seq(from = 1, to = 1, by = ((to - from)/(length.out - 1)),length.out = NULL, along.with = NULL, ...)
#En el ejemplo todos los argumentos llevan nombre. El estilo de coincidencia es exacto.
seq(from=10,to=8,length=5)

#sort.int(x, partial = NULL, na.last = NA, decreasing = FALSE,method = c("auto", "shell", "quick", "radix"), index.return = FALSE)
#Primer argumento:exacto, segndo argmento:exacto. Estilo de coincidencia: exacto.
sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3))

#which(x, arr.ind = FALSE, useNames = TRUE) para x vector o array
#Solo posee un argumento con estilo de coincidencia posicional
which(matrix(c(T,F,T,T),2,2))

#which(x, arr.ind = FALSE, useNames = TRUE) para x vector o array
#Estilo de coincidencia de primer argmento:posicional,del segundo argumento:parcial. El estilo de coincidencia sera mixto.
which(matrix(c(T,F,T,T),2,2),a=T)
