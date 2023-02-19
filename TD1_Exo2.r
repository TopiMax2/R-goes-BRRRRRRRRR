Sne = rep(0,100)
Sn = rep(0,100)
for(n in seq(100,10000,100))
{
  X = rnorm(n,0,1)
  Sne[n/100] = sd(X)^2
  Sn[n/100] = ((n-1)/n)*Sne[n/100] 
}

plot(seq(1,100),rep(1,100),type="l",xlab="n*100",ylab="Estimation de la variance"
     ,ylim=c(0.95,1.06))
points(seq(1,100),Sne,col="red")
points(seq(1,100),Sn,col="blue")

legend(85,1.06,legend=c("Sne","Sn"),col=c("red","blue"),cex=0.6,lty=1:2)
