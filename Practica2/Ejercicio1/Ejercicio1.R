##Preg1

#Preg 1.a
#Si el paquete methods se carga al iniciar de modo automatico lo podemos encontrar con search(), que devuelve una trayectoria de busqueda con listas, bibliotecas y hojas de datos que se estan usando
#Con esto en cuenta usamos funciones de busqueda y comparacion (match) para encontrar los 20 primeros elementos   
search()
ls(match("package:methods",search()))[1:20]
#Y para el numero de elementos del paquete:
length(ls(match("package:methods",search())))

#Preg 1.b
#Las librerias o paquetes a la que pertenece una funcion en especifico se obtiene usando el comando help()
#Asi para la funcion read.table:
help("read.table")
#Se observa que pertenece al paquete utils
cat("La funcion read.table pertenece al paquete utils")

#Y del mismo modo para las otras funciones:
help("data")
cat("La funcion data pertenece al paquete utils")
#con la funcion matrix:
help("matrix")
cat("La funcion matrix pertenece al paquete base")
#Por ultimo con la funcion jpeg:
help("jpeg")
cat("La funcion jpeg pertenece al paquete grDevices")


#Preg 1.c
#ls(match("package:graphics",search())) es una cadena cuyos elementos son los elementos del paquete graphics, con %in% verificamos si la funcion smoothScatter se encuentra en la cadena o no
search()
"smoothScatter" %in% ls(match("package:graphics",search()))
