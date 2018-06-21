#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#Respuesta N5:

#(a)Se describirá la funcionalidad de cada llamada de función, así como los argumentos y explicación de estos mismos:

#(a.1)La función "plot.new()", abre un nuevo cuadro de gráfico en donde se hará el trazado de un diagrama de dispersión.

#(a.2)La función "plot.window(range(pressure$temperature),range(pressure$pressure))", configura el sistema de coordenadas
#para una ventana de gráficos y establece los límites para las coordenadas x e y en el gráfico, la función RANGE puede
#usar vectores numéricos de longitud 2, que proporcionan los intervalos de coordenadas x e y.

#(a.3)La función "box()", dibuja un cuadro alrededor de la gráfica actual en el color y tipo de línea dados.

#(a.4)La funcion "axis(1)"	agrega un eje al gráfico actual, lo que permite la especificación del lado, posición, etiquetas
#y otras opciones. El argumento es un número entero que especifica en qué lado de la gráfica se dibujará el eje.
#El numero  1 = abajo, 2 = izquierda, 3 = arriba y 4 = derecha.
#En este caso el eje será agregado en la parte de abajo del cuadro. Si no se especifican las etiquetas, los valores 
#numéricos suministrados o calculados el vector numérico impreso por print.default (dígitos = 7).
#Los tics se dibujan de izquierda a derecha o de abajo hacia arriba, y se deja espacio de al menos el tamaño de una 'm' entre etiqueta.

#(a.5)La función "axis(2)" es la misma definida en (a.4) con la diferencia que el argumento es 2, es decir el eje será dibujado
#en la parte izquierda del cuadro.

#(a.6)La función "points(pressure$temperature, pressure$pressure)" dibuja una secuencia de puntos en las coordenadas especificadas.
#Los caracteres especificados se trazan, centrados en las coordenadas y alos ejes presión y temperatura.

#(a.7)La función "mtext("temperatura", side=1, line=3)" permite ingresar el texto está escrito en uno de los cuatro márgenes 
#de la región de la figura actual o en uno de los márgenes exteriores de la región. 
#El primer argumento de esta función es texto, donde se escribe el carácter o vector de expresión que se escribirá.
#SIDE indica en que lado de la trama irá el texto (1 = abajo, 2 = izquierda, 3 = arriba, 4 = derecha), en este caso
#el texto se escribirá en la parte de abajo.
#LINE indica la distancia texto respecto a la línea margen, empezando en 0 contando hacia afuera.

#(a.8)La función "mtext("presion", side=2, line=3)",se define y cumple las mismas condiciones que (a.7), con la diferencia 
#que el texto se escribirá en la parte izquierda del cuadro. 

#(a.9)La función "mtext("Presion de vapor de Mercurio\ncomo una funcion de la Temperatura",side=3, line=1, font=2)" se define 
#y cumple las mismas condiciones que (a.7), con la diferencia que el texto se escribirá en laa parte de arriba del cuadro y 
#FONT cumple la función de fuente para texto.

#(b)El código muestra la implementación de la función GRID:
plot.new()
plot.window(range(pressure$temperature),range(pressure$pressure))
box()
axis(1)
axis(2)
grid(nx =7,ny=5,col="blue",lwd=2,lty="dotted",equilogs=TRUE)
points(pressure$temperature, pressure$pressure)
mtext("temperatura", side=1, line=3)
mtext("presión", side=2, line=3)
mtext("Presión de vapor de Mercurio\ncomo una función de la Temperatura",side=3, line=1, font=2)
 
#El función GRID, genera una cuadrícula rectangular al cuadro ya establecido, teniendo como argumentos:
#El parámetro NX, cuantifica el número de la cuadrïcula en dirección del eje "x".
#El parámetro NY, cuantifica el número de la cuadrícula en dirección del eje "y".
#El parámetro COL, determina el color de las líneas de la cuadrícula.
#El parámetro LWD, proporciona el ancho de la línea númerica.
#El parámetro LTY, esta referido con el tipo de línea de la cuadrícula. 
#El parámetro EQUILOGS, solo se usa cuando las coordenadas del registro y la alineación con las marcas de eje están activas. 
