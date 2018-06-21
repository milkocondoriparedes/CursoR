#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#RespuestaN1

#(a)Si el paquete METHODS se carga al iniciar de modo automatico lo podemos encontrar con SEARCH, que devuelve 
#una trayectoria de busqueda con listas, bibliotecas y hojas de datos que se estan usando.
#Con esto en cuenta usamos funciones de busqueda y comparacion MATCH para encontrar los 20 primeros elementos:  
ls(match("package:methods",search()))[1:20]
 [1] "addNextMethod"         "allGenerics"           "allNames"              "Arith"                
 [5] "as"                    "as<-"                  "asMethodDefinition"    "assignClassDef"       
 [9] "assignMethodsMetaData" "balanceMethodsList"    "body<-"                "cacheGenericsMetaData"
[13] "cacheMetaData"         "cacheMethod"           "callGeneric"           "callNextMethod"       
[17] "canCoerce"             "cbind2"                "checkAtAssignment"     "checkSlotAssignment" 

#Y para mostrar cuantos elementos tiene el paquete se usa LENGTH:
length(ls(match("package:methods",search())))
[1] 218

#(b)Las librerias o paquetes a la que pertenece una funcion en especifico se obtiene usando el comando HELP.
#Para la funcion READ.TABLE:
help("read.table")
#Se observa que pertenece al paquete utils.
cat("La funcion read.table pertenece al paquete utils\n")

#Para la funcion DATA:
help("data")
#Se observa que pertenece al paquete utils.
cat("La funcion data pertenece al paquete utils\n")

#Para la funcion MATRIX:
help("matrix")
#Se observa que pertenece al paquete base.
cat("La funcion matrix pertenece al paquete base\n")

#Para la funcion JPEG:
help("jpeg")
#Se observa que pertenece al paquete grDevices.
cat("La funcion jpeg pertenece al paquete grDevices\n")


#(c)"ls(match("package:graphics",search()))" es una cadena cuyos elementos son los elementos del paquete graphics, veamos:
ls(match("package:graphics",search()))
 [1] "abline"          "arrows"          "assocplot"       "axis"            "Axis"           
 [6] "axis.Date"       "axis.POSIXct"    "axTicks"         "barplot"         "barplot.default"
[11] "box"             "boxplot"         "boxplot.default" "boxplot.matrix"  "bxp"            
[16] "cdplot"          "clip"            "close.screen"    "co.intervals"    "contour"        
[21] "contour.default" "coplot"          "curve"           "dotchart"        "erase.screen"   
[26] "filled.contour"  "fourfoldplot"    "frame"           "grconvertX"      "grconvertY"     
[31] "grid"            "hist"            "hist.default"    "identify"        "image"          
[36] "image.default"   "layout"          "layout.show"     "lcm"             "legend"         
[41] "lines"           "lines.default"   "locator"         "matlines"        "matplot"        
[46] "matpoints"       "mosaicplot"      "mtext"           "pairs"           "pairs.default"  
[51] "panel.smooth"    "par"             "persp"           "pie"             "plot"           
[56] "plot.default"    "plot.design"     "plot.function"   "plot.new"        "plot.window"    
[61] "plot.xy"         "points"          "points.default"  "polygon"         "polypath"       
[66] "rasterImage"     "rect"            "rug"             "screen"          "segments"       
[71] "smoothScatter"   "spineplot"       "split.screen"    "stars"           "stem"           
[76] "strheight"       "stripchart"      "strwidth"        "sunflowerplot"   "symbols"        
[81] "text"            "text.default"    "title"           "xinch"           "xspline"        
[86] "xyinch"          "yinch"  

#Ahora se usa %in% para verificar si la funcion smoothScatter se encuentra en la cadena o no:
"smoothScatter" %in% ls(match("package:graphics",search()))
[1] TRUE
