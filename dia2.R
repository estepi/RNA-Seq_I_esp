## ----setup, include=FALSE--------------------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)

getwd()

setwd("dia2");


sessionInfo()
search()


??variance 
?var


??square 
?sqrt


??graphics


?mean
?median


savehistory(file="Primera.txt")


 save(obj1, file="obj1.RData")


load(file="obj1.RData")


info<-c(29,172,2146)



4^2


pi


tan(5*pi/180)


??cosine
?cos
cos(5*pi/180)


 a1 <- pi
 a2 <- cos(pi)


 B <- -3
 b <- B - c(-2.5)


pi <- -1000; pi



 n <- seq(-2, 1, by = 0.25)
 n

seq(1,5)
seq(1,5,by=.5)
seq(1,5,length=7)


rep(10,10)
rep(c("A","B","C","D"),2)


 i <- -1:-10


x <- c(1,2,3,4)
y <- c(5,6,7,8)
z<-c(1,2)
x*y
y/x
y-x
x^y
cos(x*pi) + cos(y*pi)
y*2
z*x
z+x
y+z


 Z <- c(1:3)


a <- c(1,2,3,4,5,6,7,8,9,10)
A <- matrix(a, nrow = 5, ncol = 2)
B <- matrix(a, nrow = 5, ncol = 2, byrow = TRUE)
C <- matrix(a, nrow = 2, ncol = 5, byrow = TRUE)


x1<-c(1,2,3); x2<-c(4,5,6);  x3<-c(0,0,0)
XC<-cbind(x1,x2,x3)
is.matrix(XC) 

x3<-c(1,2,3,4)  

XR<- rbind(x1,x2,x3); is.matrix(XR); print(XR)
 matrix(rep(0,16),nrow=4) # una matriz de ceros de 4x4


 search()
 detach()


 class(iris); 
 
 as.matrix(iris); 
 as.list(iris);
 as.vector(iris);
 as.vector(as.matrix((iris)))


data(trees)
trees$Height
sum(trees$Height)
mean(trees$Height)

max(trees$Height); min(trees$Height)


## ----accesores, eval=FALSE, echo=TRUE--------------------------------------------------
## trees[4,3] # entrada en la fila cuatro y tercera
## trees[4,] # selecciona la fila
## attributes(tree)


## ----comentarios, eval=FALSE, echo=TRUE------------------------------------------------
## h <- cos(9/3) #en este paso calculo el coseno

