plot(2,6) # simple chart
# to plot by x and y 
plot(c(2,3,4),c(3,4,5))
# to give values seprately
x<-1:5
y<-6:10
plot(x,y)
# by default if only one parameter then automatically takes x as index
plot(2:8)
#giving title,xlabel and y label,color,color of main title,
#to change shape of circle, by default it is cex=1,pch for triangle shape
plot(c(3,6,9,12),main="chart",xlab="data",ylab="values",col="blue",col.main="red",cex=2,pch=25)
# graph in line form
plot(1:5,type="l")
# line graph line with spacing colour red by default index
plot(c(2,3,4),type="l",lwd=2,lty=5,col="red")
lines(c(3,4,5,6),type="l",lwd=4,lty=5,col="blue") # line graph
plot(c(2,3,4),type="p",lwd=2,lty=5,col="red")# p-circle pooints
plot(c(2,3,4),type="b",lwd=2,lty=5,col="red")# b-circle and line 
plot(c(2,3,4),type="c",lwd=2,lty=5,col="red")# c-broken lines
plot(c(2,3,4),type="s",lwd=2,lty=5,col="red")#lower- stepwise graph
plot(c(2,3,4),type="S",lwd=2,lty=5,col="red")# upper-stepwise graph 
plot(c(2,3,4),type="n",lwd=2,lty=5,col="red")# blank graph
x<-1:4
y<-5:8
plot(x,y,main="graph",ylab="data",xlab="values",type="l",col="blue")
lines(c(3,2,7,4),c(9,5,3,7),col="green")
legend("topleft",c("A","B"),fill=c("blue","green"))
par(mfrow=c(1,2))
plot(c(2,5,7,3),c(4,6,9,12))
plot(c(2,4,6,8),c(3,8,12,11),col="red")
plot(c(2,5,7,3),c(4,6,9,12),type="b",col="blue")
