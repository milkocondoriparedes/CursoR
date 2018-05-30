##Falta 1.b
##Preg1

#Preg 1.a
#Si el paquete methods se carga al iniciar de modo automatico lo podemos encontrar con search(), que devuelve una trayectoria de busqueda con listas, bibliotecas y hojas de datos que se estan usando
#Con esto en cuenta usamos funciones de busqueda y comparacion (match) para encontrar los 20 primeros elementos   
search()
ls(match("package:methods",search()))[1:20]
#Y para el numero de elementos del paquete:
length(ls(match("package:methods",search())))


#Preg 1.c
#ls(match("package:graphics",search())) es una cadena cuyos elementos son los elementos del paquete graphics, con %in% verificamos si la funcion smoothScatter se encuentra en la cadena o no
search()
"smoothScatter" %in% ls(match("package:graphics",search()))
