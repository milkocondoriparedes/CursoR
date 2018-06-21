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
  dbinom(contador1,contador3,1/2)
}
#Probamos los datos
fun()

fun<-function(cadena1,cadena2)
{
  cadena1<-character(10)
  cadena2<-character(10)
  contador1<-numeric(1)
  contador2<-numeric(1)
  contador3<-numeric(1)
  for (i in 1 : length(cadena1)) 
  {
    if(cadena1[i]=="+"){
      contador1<-contador1+1
      }
    else if (cadena1[i]=="-"){
      contador2<-contador2+1
      }
    else if (cadena1[i]=="?"){
      contador3<-contador3+1
      }
     if(cadena2[i]=="+"){
      contador1<-contador1-1
      }
    else if (cadena2[i]=="-"){
      contador2<-contador2-1
      }
    else if (cadena2[i]=="?"){
      contador3<-contador3+1
      }
    # con esto "contador1" almacenara las veces que el signo + hace falta en la cadena de A
  }
  cat("La probabilidad de que A coloque bien la antena es: \n")
  cat(contador1)
  cat(contador3)
  dbinom(contador1,contador3,1/2)
}

cadena1<-c("+","-","+","-")
cadena2<-c("+","-","?","?")
fun(cadena1,cadena2)

cadena1<-c("+","+","-","+","-")
cadena2<-c("+","-","+","-","+")
fun()



