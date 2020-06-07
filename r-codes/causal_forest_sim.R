n = 10000

# Some explanatory variable
female = sample(0:1,n, replace=TRUE)
age = runif(n, 20, 80)
z1 = sample(0:1,n, replace=TRUE)

# Specify subgroups with special treatment effect
group1 = age < 30
group2 = age >= 40 & age < 50  & female==1
group3 = age > 70 & female==0 & z1
group = group1+group2*2+group3*3


# Compute y0, tau and y1
y0 = 100 - 10*female + 10*group1  + rnorm(n, 0, 1)
tau = 10*group1 + 10*group2 - 10*group3 + rnorm(n, 0, 1)

y1 = y0 + tau 

# draw treatment dummy and compute y
w = sample(0:1, n, replace=TRUE)
y = ifelse(w==0, y0, y1)

# put everything into a data frame
dat = data.frame(y=y,w=w,female=female, age=age, z1=z1, group=group, tau=tau, y0=y0, y1=y1)

# grf requires a matrix of all explanatory variables 
X = cbind(female, age, z1)

# Estimate the causal forest
library(grf)
cf = causal_forest(Y=dat$y,X=X, W=dat$w, tune.parameters = "none")

# Compute predictions on training data set itself
pred = predict(cf,estimate.variance = TRUE)
head(pred)

dat$tau.hat = pred$predictions

library(dplyr)
dat %>%
  group_by(group) %>%
  summarize(
    obs = n(),
    tau.hat = mean(tau.hat),
    tau = mean(tau)
  )


# Compare predicted tau with actual tau in
# the different subgroups
dat %>%
  group_by(group) %>%
  summarize(obs=n(), tau.hat = mean(tau.hat), tau=mean(tau), y=mean(y))

