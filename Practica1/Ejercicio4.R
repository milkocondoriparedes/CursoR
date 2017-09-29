#Cristhian Condori Paredes 20131422K

#muestra cuanto ganas en k lanzamientos


#donde 1 es CARA, 2 es SELLO
#la forma es de 2 a la k hasta sacar un 2
v<-sample(1:2,100,replace=TRUE,prob=(1/2:1/2))
v
k<-0
i<-1
gano<-1
while(k==0){
	if(v[i]==1){
	gano<-gano*2
	i<-i+1;
	}
	if(v[i]==2){
	gano<-gano*2
	k<-1
	}
}
#imprime lo q ganas - los 15 soles iniciales
print(gano-15)
#se puede observa claramente q siempre se pierde


