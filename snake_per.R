require(animation)
require(ggplot2)
ani.options(nmax=50)
x=0
y=0
par(bg="light yellow")
p=0.5
score=0


wton<-function(ch){
  if (ch=='w') {return(1)} 
  else if (ch=='d'){return(2)}
  else if (ch=='a'){return(3)}
  else if (ch=="s"){return(4)}
}


for(j in 1:10)
{
eat_x=sample(-4:4,size=1)
eat_y=sample(-4:4,size=1)
for(i in 1:50)
{
  plot(x,y ,ylim=c(-5,5),col="red",xlim=c(-5,5),lwd=18,
       main=paste("score:",score),xlab="",ylab="",
pch="Snake")
  grid(NULL,NULL)
  points(eat_x,eat_y,col="green",lwd=4,pch="Food")
 
  m=matrix(c(0,1,-1,0,1,0,0,-1),nc=2)[wton(readline()),]
  x=x+m[1]	
  y=y+m[2]
  
  if (x == eat_x && y == eat_y)
  {
    
    text(0,0,"winner")
 ani.pause()
    break
  }
  
 
}
score=score+1


}
