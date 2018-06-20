#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#Respuesta N3:
 
#(a)El codigo muestra el vector "sexo" y "partido".
sexo<-c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F","F","M","M","M","M")
sexo
[1] "F" "M" "M" "M" "F" "F" "F" "M" "M" "M" "M" "F" "M" "F" "F" "F" "M" "M" "M" "M"
partido<-c("L","N","N","L","N","V","N","N","V","O","V","L","N","N","L","L","N","N","L","O")
partido
[1] "L" "N" "N" "L" "N" "V" "N" "N" "V" "O" "V" "L" "N" "N" "L" "L" "N" "N" "L" "O"

#(b)Se crean factores "partido" y "sexo" con la funcion FACTOR; no tiene sentido hablar de la funcion ORDERED 
#puesto que no hay niveles entre los partidos ni el sexo, por defecto R organiza los niveles de forma alfabeticamente.
partido<-factor(c("L","N","N","L","N","V","N","N","V","O","V","L","N","N","L","L","N","N","L","O"),levels=c("N","L","V","M","O"),labels=c("Nacional","Laboral","Verde","Maori","Otro"))
partido
 [1] Laboral  Nacional Nacional Laboral  Nacional Verde    Nacional Nacional Verde    Otro     Verde   
[12] Laboral  Nacional Nacional Laboral  Laboral  Nacional Nacional Laboral  Otro    
Levels: Nacional Laboral Verde Maori Otro

sexo<-factor(c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F","F","M","M","M","M"),levels=c("F","M"),labels=c("Femenino","Masculino"))
sexo
 [1] Femenino  Masculino Masculino Masculino Femenino  Femenino  Femenino  Masculino Masculino Masculino
[11] Masculino Femenino  Masculino Femenino  Femenino  Femenino  Masculino Masculino Masculino Masculino
Levels: Femenino Masculino

#Se usa la funcion TAPPLY para mostrar el "sexo" de cada "partido":
tapply(sexo,partido,table)
$Nacional

 Femenino Masculino 
        3         6 

$Laboral

 Femenino Masculino 
        4         2 

$Verde

 Femenino Masculino 
        1         2 

$Maori
NULL

$Otro

 Femenino Masculino 
        0         2 

#Se usa la funcion TAPPLY para mostrar el "partido" de cada "sexo":
tapply(partido,sexo,table)
$Femenino

Nacional  Laboral    Verde    Maori     Otro 
       3        4        1        0        0 

$Masculino

Nacional  Laboral    Verde    Maori     Otro 
       6        2        2        0        2 

#(c)El codigo muestra el uso de la funcion TAPPLY para mostrar el "partido" del "sexo Masculino":
tapply(partido,sexo,table)[2]
$Masculino

Nacional  Laboral    Verde    Maori     Otro 
       6        2        2        0        2 
#Asi como mostrar el "sexo" del "partido Nacional":
tapply(sexo,partido,table)[1]
$Nacional

 Femenino Masculino 
        3         6  

#(d)El codigo muestra el uso de la funcion FACTOR para añadir elementos al factor "sexo" y "partido":
#donde el vector c("M","M","F","F","F","M") tiene niveles (2,2,1,1,1,2):
sexo<-factor(c(sexo,2,2,1,1,1,2),levels=c(1,2),labels=c("Femenino","Masculino"))
sexo
 [1] Femenino  Masculino Masculino Masculino Femenino  Femenino  Femenino  Masculino Masculino Masculino
[11] Masculino Femenino  Masculino Femenino  Femenino  Femenino  Masculino Masculino Masculino Masculino
[21] Masculino Masculino Femenino  Femenino  Femenino  Masculino
Levels: Femenino Masculino

#y el vector c("Nacional","Maori","Maori","Laboral","Verde","Laboral") tiene niveles (1,4,4,2,3,2):
partido<-factor(c(partido,1,4,4,2,3,2),levels=c(1,2,3,4,5),labels=c("Nacional","Laboral","Verde","Maori","Otro"))
partido
 [1] Laboral  Nacional Nacional Laboral  Nacional Verde    Nacional Nacional Verde    Otro     Verde   
[12] Laboral  Nacional Nacional Laboral  Laboral  Nacional Nacional Laboral  Otro     Nacional Maori   
[23] Maori    Laboral  Verde    Laboral 
Levels: Nacional Laboral Verde Maori Otro

#Se usa FACTOR para crear un factor "confianza" con niveles bajo, moderado y alto: 
confianza<-factor(c(3,2,1,3,2,3,2,1,2,2,2,2,2,2,2,2,2,2,2,1,1,2,3,1,2,1),levels=c(1,2,3),labels=c("Bajo","Moderado","Alto"))
confianza
 [1] Alto     Moderado Bajo     Alto     Moderado Alto     Moderado Bajo     Moderado Moderado Moderado
[12] Moderado Moderado Moderado Moderado Moderado Moderado Moderado Moderado Bajo     Bajo     Moderado
[23] Alto     Bajo     Moderado Bajo    
Levels: Bajo Moderado Alto

#A continuacion se usa la funcion TAPPLY para mostrar la "confianza" de las personas identificadas con el partido "Laboral":
tapply(confianza,partido,table)[2]
$Laboral

    Bajo Moderado     Alto 
       2        4        2 

#Asi como para mostrar la "confianza" de las personas identificadas con el partido "Nacional":
tapply(confianza,partido,table)[1]
$Nacional

    Bajo Moderado     Alto 
       3        7        0 

#De lo anterior se puede decir que  existe mayor confianza en el partido Laboral que en el Nacional.

