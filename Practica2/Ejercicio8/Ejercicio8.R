###Preg8
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
#Ahora lo probamos
#1°prueba: list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))
x<-list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))
invMat(x)
x

#2° prueba: x como list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)), silent=FALSE
x<-list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))
invMat(x, silent = FALSE)
#Aparecen los errores devueltos por la funcion try cuando la matriz no es cuadrada, cuando el valor a invertir no es matriz no intenta calcularla
#porque en el codigo se omite la operacion cuando no es matriz, por ese motivo salen dos errores
x

#3° prueba: x como list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)),matrix(1:6,2,3),cbind(c(3,5),c(6,5)),as.vector(diag(2)))
#y noinv como "matriz inadecuada"; todos los otros valores por defecto.
x<-list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)),matrix(1:6,2,3),cbind(c(3,5),c(6,5)),as.vector(diag(2)))
invMat(x,noninv = "matriz inadecuada")
x

#4° prueba: x como hola
x<-hola
invMat(x)

#5° prueba:x como list()
x<-list()
invMat(x)
