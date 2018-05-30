
##Preg1

#Preg 1.a
#Si el paquete methods se carga al iniciar de modo automatico lo podemos encontrar con search(), que devuelve una trayectoria de busqueda con listas, bibliotecas y hojas de datos que se estan usando
#Con esto en cuenta usamos funciones de busqueda y comparacion (match) para encontrar los 20 primeros elementos   
search()
ls(match("package:methods",search()))[1:20]
#Y para el numero de elementos del paquete:
length(ls(match("package:methods",search())))
