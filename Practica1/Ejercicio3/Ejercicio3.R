#Nombre: Betty Mendoza Chuquiruna 20150497B
#Respuesta N3:
 
#a)El código muestra el vector:sexo y partido.

 sexo=c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F","F","M","M","M","M")
 partido=c("L","N","N","L","N","V","N","N","V","O","V","L","N","N","L","L","N","N","L","O")

#b)Se crean factores, partido y sexo, no tiene sentido hablar de la funcion "ordered" puesto que no hay niveles entre los partidos ni el sexo, por defecto R 
rganiza los niveles de forma alfabeticamente.

 partido=factor(c("L","N","N","L","N","V","N","N","V","O","V","L","N","N","L","L","N","N","L","O"),levels=c("N","L","V","M","O"),labels=c("Nacional","Laboral","Verde","Maori","Otro"))
 partido
 Laboral  Nacional Nacional Laboral  Nacional Verde    Nacional Nacional Verde    Otro     Verde    Laboral  Nacional Nacional Laboral  Laboral  Nacional Nacional Laboral  Otro    
 Levels: Nacional Laboral Verde Maori Otro
tapply(sexo,partido,table)
$`Nacional`

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


 sexo=factor(c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F","F","M","M","M","M"),levels=c("F","M"),labels=c("Femenino","Masculino"))
 sexo
 Femenino  Masculino Masculino Masculino Femenino  Femenino  Femenino  Masculino Masculino Masculino Masculino Femenino  Masculino Femenino  Femenino  Femenino 
 Masculino Masculino Masculino Masculino
 Levels: Femenino Masculino

 tapply(partido,sexo,table)
$`Femenino`

Nacional  Laboral    Verde    Maori     Otro 
       3        4        1        0        0 

$Masculino

Nacional  Laboral    Verde    Maori     Otro 
       6        2        2        0        2 

#C)El código muestra el uso de la función tapply:

tapply(partido,sexo,table)[2]
$`Masculino

Nacional  Laboral    Verde    Maori     Otro 
       6        2        2        0        2 

 tapply(sexo,partido,table)[1]
$`Nacional

 Femenino Masculino 
        3         6 


 
#d)El código muestra el uso de la funcion tapply:
sexo=factor(c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F","F","M","M","M","M","M","M","F","F","F","M"),levels=c("F","M"),labels=c("Femenino","Masculino"))
sexo
 [1] Femenino  Masculino Masculino Masculino Femenino  Femenino  Femenino  Masculino Masculino Masculino Masculino Femenino  Masculino Femenino  Femenino  Femenino 
[17] Masculino Masculino Masculino Masculino Masculino Masculino Femenino  Femenino  Femenino  Masculino
Levels: Femenino Masculino
 partido=factor(c("L","N","N","L","N","V","N","N","V","O","V","L","N","N","L","L","N","N","L","O","N","M","M","L","V","L"),levels=c("N","L","V","M","O"),labels=c("Nacional","Laboral","Verde","Maori","Otro"))
partido
 [1] Laboral  Nacional Nacional Laboral  Nacional Verde    Nacional Nacional Verde    Otro     Verde    Laboral  Nacional Nacional Laboral  Laboral  Nacional
[18] Nacional Laboral  Otro     Nacional Maori    Maori    Laboral  Verde    Laboral 
Levels: Nacional Laboral Verde Maori Otro
 confianza=factor(c("t","d","u","t","d","t","d","u","d","d","d","d","d","d","d","d","d","d","d","u","u","d","t","u","d","u"),levels=c("u","d","t"),labels=c("Bajo","Moderado","Alto"))
 confianza
 [1] Alto     Moderado Bajo     Alto     Moderado Alto     Moderado Bajo     Moderado Moderado Moderado Moderado Moderado Moderado Moderado Moderado Moderado
[18] Moderado Moderado Bajo     Bajo     Moderado Alto     Bajo     Moderado Bajo    
Levels: Bajo Moderado Alto

 tapply(confianza,partido,table)[2]
$`Laboral

    Bajo Moderado     Alto 
       2        4        2 

> tapply(confianza,partido,table)[1]
$`Nacional

    Bajo Moderado     Alto 
       3        7        0 

