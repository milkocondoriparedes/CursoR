#Nombre: Betty Mendoza Chuquiruna 20150497B
#Respuesta N5:
#A)Se describirá la funcionalidad de cada llamda de función, así como los argumentos y explicación de estos mismos:
#a)La función "plot.new", abre un nuevo cuadro de gráfico en donde se hará el trazado de un diagrama de dispersión. 
#b)La funcion "plot.window(range(pressure$temperature),range(pressure$pressure))", configura el sistema de coordenadas para una ventana de gráficos y establece los límites para las coordenadas x e y en el gráfico, la función range puede usar vectores numéricos de longitud 2, que proporcionan los intervalos de coordenadas x e y.                                                                             
#c)La función "box()", dibuja un cuadro alrededor de la gráfica actual en el color y tipo de línea dados. 
#d)La funcion "axis(1)"	agrega un eje al gráfico actual, lo que permite la especificación del lado, posición, etiquetas y otras opciones. El argumento es un número entero que especifica en qué lado de la gráfica se dibujará el eje. El numero  1 = abajo, 2 = izquierda, 3 = arriba y 4 = derecha.
#En este caso el eje será agregado en la parte de abajo del cuadro. Si no se especifican las etiquetas, los valores numéricos suministrados o calculados el vector numérico impreso por print.default (dígitos = 7).
#Los tics se dibujan de izquierda a derecha o de abajo hacia arriba, y se deja espacio de al menos el tamaño de una 'm' entre etiqueta.
#e)La función "axis(2)" es la misma definida en d) con la diferencia que el argumento es 2, es decir el eje será dibujado en la parte izquierda del cuadro.
#f)la función "points(pressure$temperature, pressure$pressure)" dibuja una secuencia de puntos en las coordenadas especificadas. Los caracteres especificados se trazan, centrados en las coordenadas y alos ejes presión y temperatura.
#g)La funcion "mtext("temperatura", side=1, line=3)" permite ingresar el texto está escrito en uno de los cuatro márgenes de la región de la figura actual o en uno de los márgenes exteriores de la región. El primer argumento de esta función es texto, donde se escribe el carácter o vector de expresión que se escribirá.
#Side: Indica en que lado de la trama irá el texto (1 = abajo, 2 = izquierda, 3 = arriba, 4 = derecha). En este caso el texto se escribirá en la parte de abajo. Line, en la línea MARgin, empezando en 0 contando hacia afuera.
#h)La función "mtext("presion", side=2, line=3)",se define y cumple las mismas condiciones que g), con al diferencia que el texto se escribirá en la parte izquierda del cuadro. 
#i)La función "mtext("Presion de vapor de Mercurio\ncomo una funcion de la Temperatura",side=3, line=1, font=2)" se define y cumple las mismas condiciones que g), con la diferencia que el texto se escribirá en laa parte de arriba del cuadro y font cumple la función de fuente para texto

#B)El código muestra la implementación de la función "grid":
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
 
#El parámetro "grid", genera una cuadrícula rectangular al cuadro ya establecido, teniendo como argumentos "nx", cuantifica el número de la cuadrïcula en dirección del eje "x",de la misma forma "ny",cuantifica el número de la cuadrícula en dirección del eje "y".
#El parámetro "col", determina el color de las líneas de la cuadrícula.El parámetro "lwd", proporciona el ancho de la línea númerica.
#El parámetro "lty",esta referido con el tipo de línea de la cuadrícula y El parámetro "equilogs" solo se usa cuando las coordenadas del registro y la alineación con las marcas de eje están activas. 
