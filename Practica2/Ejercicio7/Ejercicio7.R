

###PREG7
#Preg7.a
#La subcadena "??...??" se asemeja a n lanzamiento de monedas, donde "?" puede ser + o -, cada uno con %50 de probabilidad,
#Ademas, si contabilizamos el # de signos + en lacadena B y la comparamos con la cadena A, obtenemos el # de signos + que harian falta
#La resolucion del problema es un caso de distribucion binomial, donde el total de intentos es 2^(# de ?) y el numero de casos favorables
#es el # de signos +(o -) que hacen falta en la cadena de A
fun<-function()
{
  cadena1<-character(10)
  cadena2<-character(10)
  cadena1<-readline("Ingresar los datos que B dicto ")
  cadena2<-readline("Ingresar los datos que A cree escuchar")
  contador1<-numeric(1)
  contador2<-numeric(1)
  contador3<-numeric(1)
  for (i in 1 : nchar(cadena1)) 
  {
    switch(substr(cadena1,i,i),"+"= contador1<-contador1 +1,"-"=contador2<-contador2+1,"?"=contador3<-contador3+1)
    switch(substr(cadena2,i,i),"+"= contador1<-contador1 -1,"-"=contador2<-contador2-1,"?"=contador3<-contador3+1)
    # con esto "contador1" almacenara las veces que el signo + hace falta en la cadena de A
  }
  cat("La probabilidad de que A coloque bien la antena es: \n")
  format(round(dbinom(contador1,contador3,1/2),9), nsmall = 9)
}
#Probamos la funcion para el ejemplo 1
fun()
++-+-
+-+-+
  
#Probamos la funcion para el ejemplo 2
fun()
+-+-
+-??
  
# si queremos ingresar nuevas pruebas, simplemente escribimos fun() y tipeamos las entradas cuando las pida
fun()

## parte b de la 7
funcion2 <-function()
{
    #Almacenamos las sumas de los dados en un vector y el numero de combinaciones de dados que lo hacen posible en otro
    # notar que una suma de dados y su frecuencia en los vectores 1 y 2 respectivamente tienen la misma posicion
  vector1 <- c(3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18)
  vector2 <- c(1,3,6,10,15,21,25,27,27,25,21,15,10,6,3,1)
  
  #pedimos la suma que obtuvo vilma y lo almacenamos
  primer_numero<-readline("Ingresar la suma que obtuvo Vilma ")
  #pedimos la suma que obtuvo esther y lo almacenamos
  segundo_numero<-readline("Ingresar la suma que obtuvo Esther ")
  #obtenemos el maximo de esos numeros pedidos entre vilma y esther
  suma_max <- max(segundo_numero,primer_numero)
  #comparamos ese numero maximo con los elementos del vector1 y obtenemos la posicion
  posicion <- match(suma_max, vector1)
  # la varible suma sera el numero de casos favorables que se ira incrementando conforme avance el ciclo for siguiente
  suma<-0
  # este ciclo for contara el total de casos favorables()
  for (i in posicion:length(vector2)) {
    suma <- suma + vector2[i]
  }
  cat("La probabilidad de que Jessica gane es:  ")
  cat(suma,"/","216")
}
#Si queremos probar los datos del ejemplo:
funcion2()
4
4

#Probamos el codigo con un dato ingresado por el usuario
funcion2()
