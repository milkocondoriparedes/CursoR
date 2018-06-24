#Nombre: Betty Mendoza Chuquiruna 20150497B
#        Cristhian Condori Paredes 20131422K
#        Elias Llampi Aliaga 20141460B

#RespuestaN8:

#El codigo muestra una mejora de la funcion SOLVE para determinar la inversa de una lista de matrices: 
x.env<-new.env()
x.env$x
invMat<-function(x, noninv = "NA", nonmat = "No es una matriz", silent = TRUE)
  {
  x.env$x<-x
    #Verificamos que x sea na lista
    if(is.list(x.env$x))
    {
      if(length(x.env$x)>0)
      {
        if(is.character(nonmat))
        {
          for (i in 1 : length(x.env$x)) 
          {
            if(is.matrix(x[[i]]))
            {
              x.env$x[[i]]<-try(solve(x.env$x[[i]]),silent)
              if(inherits(x.env$x[[i]],"try-error"))
              {
                x.env$x[[i]]<-noninv
                
              }
            }
            else
            {
              x.env$x[[i]]<-nonmat
            }
          }
        }
      }else{cat("La lista no tiene elementos")}
    }else{cat("No se ha ingresado una lista")}
  #return(x.env$x)
  assign("x", x.env$x, envir = .GlobalEnv)
}

#Ahora se prueba el codigo:
#prueba: list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))
x<-list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))
invMat(x)
x
[[1]]
[1] "No es una matriz"

[[2]]
[1] "NA"

[[3]]
[1] "NA"

[[4]]
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

#prueba: x como list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)), silent=FALSE
x<-list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))
invMat(x, silent = FALSE)
Error in solve.default(x.env$x[[i]]) : 'a' (1 x 4) debe ser cuadrada
Error in solve.default(x.env$x[[i]]) : 'a' (4 x 1) debe ser cuadrada
#Aparecen los errores devueltos por la funcion try cuando la matriz no es cuadrada, cuando el valor a invertir no es matriz no intenta calcularla
#porque en el codigo se omite la operacion cuando no es matriz, por ese motivo salen dos errores
x
[[1]]
[1] "No es una matriz"

[[2]]
[1] "NA"

[[3]]
[1] "NA"

[[4]]
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

#prueba: x como list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)),matrix(1:6,2,3),cbind(c(3,5),c(6,5)),as.vector(diag(2)))
#y NOINV como "matriz inadecuada"; todos los otros valores por defecto.
x<-list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)),matrix(1:6,2,3),cbind(c(3,5),c(6,5)),as.vector(diag(2)))
invMat(x,noninv = "matriz inadecuada")
x
[[1]]
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
 [1,]    1    0    0    0    0    0    0    0    0
 [2,]    0    1    0    0    0    0    0    0    0
 [3,]    0    0    1    0    0    0    0    0    0
 [4,]    0    0    0    1    0    0    0    0    0
 [5,]    0    0    0    0    1    0    0    0    0
 [6,]    0    0    0    0    0    1    0    0    0
 [7,]    0    0    0    0    0    0    1    0    0
 [8,]    0    0    0    0    0    0    0    1    0
 [9,]    0    0    0    0    0    0    0    0    1

[[2]]
[1] "matriz inadecuada"

[[3]]
             [,1]       [,2]        [,3]        [,4]
[1,]  0.019900498 -0.2288557  0.35820896 -0.79104478
[2,]  0.203980100  0.1542289 -0.32835821  0.64179104
[3,] -0.009950249  0.1144279 -0.17910448  0.89552239
[4,] -0.054726368  0.1293532  0.01492537 -0.07462687

[[4]]
[1] "matriz inadecuada"

[[5]]
           [,1] [,2]
[1,] -0.3333333  0.4
[2,]  0.3333333 -0.2

[[6]]
[1] "No es una matriz"

#prueba: x como hola
x<-"hola"
invMat(x)
No se ha ingresado una lista

#prueba:x como list()
x<-list()
invMat(x)
La lista no tiene elementos
