## ----setup, include=FALSE--------------------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)


## ----getwd, eval=FALSE, echo=TRUE------------------------------------------------------
## getwd()


## ----setwd, eval=FALSE, echo=TRUE------------------------------------------------------
## setwd("dia2");


## ----help, eval=FALSE, echo=TRUE-------------------------------------------------------
## sessionInfo()
## search()


## ----help2, eval=FALSE, echo=TRUE------------------------------------------------------
## ??variance ?var


## ----help2b, eval=FALSE, echo=TRUE-----------------------------------------------------
## ??square ?sqrt


## ----help3, eval=FALSE, echo=TRUE------------------------------------------------------
## ??graphics


## ----help4, eval=FALSE, echo=TRUE------------------------------------------------------
## ?mean ?meadian


## ----save, eval=FALSE, echo=TRUE-------------------------------------------------------
## savehistory(file=”Primera.txt”)


## ----save1, eval=FALSE, echo=TRUE------------------------------------------------------
## save(obj1, file="obj1.RData")


## ----load, eval=FALSE, echo=TRUE-------------------------------------------------------
## load(file="obj1.RData")


## ----info, eval=FALSE, echo=TRUE-------------------------------------------------------
## info<-c(29,172,2146)


## ----info2, eval=FALSE, echo=TRUE------------------------------------------------------
## 4^2


## ----pi, eval=FALSE, echo=TRUE---------------------------------------------------------
## pi


## ----tan, eval=FALSE, echo=TRUE--------------------------------------------------------
## tan(5*pi/180)


## ----tan2, eval=FALSE, echo=TRUE-------------------------------------------------------
## ??cosine
## ?cos
## cos(5*pi/180)


## ----pi2, eval=FALSE, echo=TRUE--------------------------------------------------------
## a1 <- pi
## a2 <- cos(pi)


## ----resta, eval=FALSE, echo=TRUE------------------------------------------------------
## B <- -3
## b <- B - c(-2.5)


## ----asignacion2, eval=FALSE, echo=TRUE------------------------------------------------
## pi <- -1000; pi


## ----asignacion3, eval=FALSE, echo=TRUE------------------------------------------------
## sqrt()


## ----vector, eval=FALSE, echo=TRUE-----------------------------------------------------
## n <- seq(-2, 1, by = 0.25)


## ----seq, eval=FALSE, echo=TRUE--------------------------------------------------------
## seq(1,5)
## seq(1,5,by=.5)
## seq(1,5,length=7)


## ----rep2, eval=FALSE, echo=TRUE-------------------------------------------------------
## rep(10,10)
## rep(c("A","B","C","D"),2)


## ----index, eval=FALSE, echo=TRUE------------------------------------------------------
## i <- -1:-10


## ----rep, eval=FALSE, echo=TRUE--------------------------------------------------------
## x <- c(1,2,3,4)
## y <- c(5,6,7,8)
## z<-c(1,2)
## x*y
## y/x
## y-x
## x^y
## cos(x*pi) + cos(y*pi)
## y*2
## z*x
## z+x
## y+z


## ----NAs, eval=FALSE, echo=TRUE--------------------------------------------------------
## Z <- c(1:3).


## ----mat, eval=FALSE, echo=TRUE--------------------------------------------------------
## a <- c(1,2,3,4,5,6,7,8,9,10)
## A <- matrix(a, nrow = 5, ncol = 2)
## B <- matrix(a, nrow = 5, ncol = 2, byrow = TRUE)
## C <- matrix(a, nrow = 2, ncol = 5, byrow = TRUE)


## ----mat2, eval=FALSE, echo=TRUE-------------------------------------------------------
## x1<-c(1,2,3); x2<-c(4,5,6);  x3<-c(0,0,0)
## XC<-cbind(x1,x2,x3)
## is.matrix(XC) #chequear la clase del objeto XC


## ----cbind, eval=FALSE, echo=TRUE------------------------------------------------------
## x3<-c(1,2,3,4)  ¿Qué pasa?


## ----rbind, eval=FALSE, echo=TRUE------------------------------------------------------
## XR<- rbind(x1,x2,x3); is.matrix(XR); print(XR)
## matrix(rep(0,16),nrow=4) # una matriz de ceros de 4x4


## ----paquetes , eval=FALSE, echo=TRUE--------------------------------------------------
## search()
## detach()


## ----clases, eval=FALSE, echo=TRUE-----------------------------------------------------
## class(iris); as.matrix(iris); as.list(iris); as.vector(iris); as.vector(as.matrix((iris)))


## ----data, eval=FALSE, echo=TRUE-------------------------------------------------------
## data(trees)
## trees$Height
## sum(trees$Height)
## mean(trees$Height)
## max(trees$Height); min(trees$Height)


## ----accesores, eval=FALSE, echo=TRUE--------------------------------------------------
## trees[4,3] # entrada en la fila cuatro y tercera
## trees[4,] # selecciona la fila
## attributes(tree)


## ----comentarios, eval=FALSE, echo=TRUE------------------------------------------------
## h <- cos(9/3) #en este paso calculo el coseno

