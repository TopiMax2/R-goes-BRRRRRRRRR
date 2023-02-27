X = runif(100000,min=0,max=2)
M = matrix(X,ncol = 1000,nrow = 100)
N = apply(M,2,max)
head(N)
mean(N)

n=100
b=2
m=n*b/(n+1) # Esperance de Tn (théorique)
V=n*b^2/(n+2)-m^2 # Variance de Tn (théorique)
z=qnorm(0.995) # z(1-alpha/2) avec alpha = 0.1

IF=c(m-z*sqrt(V/1000),m+z*sqrt(V/1000))
IF

mean(MAX)
var(MAX)
