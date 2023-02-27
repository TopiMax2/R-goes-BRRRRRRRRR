N=100
X=runif(N,-1,1)
Y=runif(N,-1,1)

t=seq(-pi,pi,0.01)
plot(cos(t),sin(t),type="l")

couleur=ifelse(X^2+Y^2<1,"red","blue")
points(X,Y,col=couleur)
