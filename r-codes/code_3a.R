# Code of the R illustration in Chapter 3a

# 1. Write a function in R with name choice.prob.logit that takes as argument a matrix of deterministic valuations V for N consumers and J products and a scale parameter sigma and returns a matrix of choice probabilities P for each consumer and product.

N = 3
J = 2
sigma = 1

V = cbind(c(1,1,1), c(1,2,3))
V
colnames(V) = c("prod1","prod2")
V

choice.prob.logit = function(V, sigma=1) {
  N = NROW(V)
  J = NCOL(V)
  exp_V = exp(V/sigma)
  
  denom = rowSums(exp_V)
  denom = matrix(denom, nrow=N, ncol=J)
  denom
  
  P = exp_V / denom
  P
}
choice.prob.logit(V)

choice.prob.logit(V, sigma=100)

N = 100
V1 = rnorm(N, 1,1)
V2 = rnorm(N, 2,1)
V = cbind(V1, V2)
V

P = choice.prob.logit(V)

# 2.  Compute expected market shares for each product $j$ given a matrix of $V_{nj}$

expected.market.shares = colMeans(P)
expected.market.shares

# 3. Write another function sim.choice.logit that takes a matrix of V and scale σ. It draws ε from an i.i.d. extreme value distribution, computes the corresponding U and returns for each individual n the selected product. Compare the simulated market shares with the expected market shares.
# 
# U[n,j] = V[n,j] + eps[n]

# You may need to install the package evd. Just uncomment and run the 
# following line once.

# install.packages("evd")

N = 3
J = 2
sigma = 1

V = cbind(c(1,1,1), c(1,2,3))
V
colnames(V) = c("prod1","prod2")
V

sim.choice.logit = function(V, sigma=1) {
  library(evd)
  eps = matrix(rgumbel(N*J, 0, scale=sigma),nrow = N, ncol = J)
  eps
  U = V + eps
  U
  max.col(U)
}
sim.choice.logit(V)

N = 1000
J = 2
V = cbind(rep(1,N),rep(2,N))
V

P = choice.prob.logit(V)

expected.market.shares = colMeans(P)
expected.market.shares

choices = sim.choice.logit(V)
choices
sim.market.shares = table(choices) / N

rbind(
  expected.market.shares,
  sim.market.shares
)

# 4. Draw a plot that illustrates for a given individual n and product j how, ceteris paribus, P changes in V.

V1 = -10:10
V1

V2 = 0

V = cbind(V1, V2)
V

P = choice.prob.logit(V)
P

plot(x=V[,1],y=P[,1])
