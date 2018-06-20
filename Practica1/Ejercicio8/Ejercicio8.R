#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#Respuesta N8:
 
#(a)El codigo muestra el uso de DATA.FRAME para almacenar en "dframe" el vector "persona","sexo" y "puntuacion":
persona<-c("Stan","Francine","Steve","Roger","Hayley","Klaus")
sexo<-factor(c("M","F","M","M","F","M"),levels=c("F","M"))
puntuacion<-factor(c("Alto","Medio","Bajo","Alto","Medio","Medio"),levels=c("Alto","Medio","Bajo"))
dframe<-data.frame(persona, sexo, puntuacion)
dframe
   persona sexo puntuacion
1     Stan    M       Alto
2 Francine    F      Medio
3    Steve    M       Bajo
4    Roger    M       Alto
5   Hayley    F      Medio
6    Klaus    M      Medio

#(b)El codigo muestra la adicion del vector "edad" en el DATA FRAME "dframe":
edad<-c(41,41,15,1600,21,60)
dframe<-data.frame(dframe,edad)
dframe
   persona sexo puntuacion edad
1     Stan    M       Alto   41
2 Francine    F      Medio   41
3    Steve    M       Bajo   15
4    Roger    M       Alto 1600
5   Hayley    F      Medio   21
6    Klaus    M      Medio   60

#(c)El codigo muestra el reordenamiento de las columnas del DATA FRAME "dframe":
dframe<-data.frame(persona=dframe[1],edad=dframe[4],sexo=dframe[2],puntuacion=dframe[3])
dframe
   persona edad sexo puntuacion
1     Stan   41    M       Alto
2 Francine   41    F      Medio
3    Steve   15    M       Bajo
4    Roger 1600    M       Alto
5   Hayley   21    F      Medio
6    Klaus   60    M      Medio

#(d)El codigo muestra el almacenamiento de datos en un DATA FRAME "misdatos":
misdatos<-data.frame(persona=c("Peter","Lois","Meg","Chris","Stewie"),edad=c(42,40,17,14,1),sexo=factor(c("M","F","F","M","M")))
misdatos
  persona edad sexo
1  Peter   42    M
2   Lois   40    F
3    Meg   17    F
4  Chris   14    M
5 Stewie    1    M

#El codigo muestra como se almacena una nueva variable "edad.mon" en el DATA FRAME "misdatos": 
misdatos$edad.mon <- misdatos$edad*12
misdatos
  persona edad sexo edad.mon
1   Peter   42    M      504
2    Lois   40    F      480
3     Meg   17    F      204
4   Chris   14    M      168
5  Stewie    1    M       12

#Se elimina la cuarta columna del DATA FRAME "misdatos" y se almacena en "misdatos2":
misdatos2<-misdatos[,-4]
misdatos2
  persona edad sexo
1   Peter   42    M
2    Lois   40    F
3     Meg   17    F
4   Chris   14    M
5  Stewie    1    M

#Se crea una nueva variable "puntuacion" y se almacena en el DATA FRAME "misdatos2", ya que para combinarlo
#con el DATA FRAME "dframe" deben tener igual numero de variables:
misdatos2$puntuacion <- NA
misdatos2
  persona edad sexo puntuacion
1   Peter   42    M         NA
2    Lois   40    F         NA
3     Meg   17    F         NA
4   Chris   14    M         NA
5  Stewie    1    M         NA

#Ya que el DATA FRAME "dframe" y "misdatos2" tienen igual numero de variables o columnas, se usa
#la funcion RBIND para poder juntarlos en un nuevo DATA FRAME "misdatosframe":
misdatosframe<-rbind(dframe,misdatos2)
misdatosframe
    persona edad sexo puntuacion
1      Stan   41    M       Alto
2  Francine   41    F      Medio
3     Steve   15    M       Bajo
4     Roger 1600    M       Alto
5    Hayley   21    F      Medio
6     Klaus   60    M      Medio
7     Peter   42    M       <NA>
8      Lois   40    F       <NA>
9       Meg   17    F       <NA>
10    Chris   14    M       <NA>
11   Stewie    1    M       <NA>
