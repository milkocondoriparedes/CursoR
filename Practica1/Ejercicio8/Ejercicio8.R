#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K

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

#(b)El codigo muestra 
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

#(c)El codigo muestra
misdatos<-data.frame(persona=c("Peter","Lois","Meg","Chris","Stewie"),edad=c(42,40,17,14,1),sexo=factor(c("M","F","F","M","M")))
misdatos
  persona edad sexo
1  Peter   42    M
2   Lois   40    F
3    Meg   17    F
4  Chris   14    M
5 Stewie    1    M
                   
                   
                   
                   
