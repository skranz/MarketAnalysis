# Exploring Lasso Estimation
# 
# This is the code studied in the lecture videos of 
# Chapte 2a
set.seed(1234)
n = 10000

eps = rnorm(n, 0, 1)
x1 = runif(n, -1, 1)
x2 = runif(n, -1, 1)
x3 = runif(n, -1, 1)
x4 = runif(n, -1, 1)
x5 = runif(n, -1, 1)

y = x1+ 2*x4 + x3 + 
  x1*x2 + x1*x4 + x2*x3 + x2*x4 + x3*x4 + x3*x5 + eps

dat = data.frame(y=y,x1=x1,x2=x2,x3=x3,x4=x4,x5=x5)

n.train = round(0.8*NROW(dat))
n.train = 20

train.rows = sample.int(n, n.train)

train = dat[train.rows, ]
test = dat[-train.rows,]

X = model.matrix(y ~ (x1+x2+x3+x4+x5)^2, data=dat)
X.train = X[train.rows,]
X.test = X[-train.rows,]

library(glmnet)

lasso1 = glmnet(x=X.train, y=train$y,lambda = 1)
summary(lasso1)

library(broom)
tidy(lasso1)
colnames(X)

lasso0.1 = glmnet(x=X.train, y=train$y,lambda = 0.1)
tidy(lasso0.1)

lambdas = c(0.001, 0.01, 0.1, 0.5)


model.li = lapply(lambdas, function(lambda) {
  glmnet(x=X.train, y=train$y,lambda = lambda)
})
names(model.li) = paste("lambda_", lambdas)

yhat.li = lapply(model.li, function(model) {
  predict(model, X.test)
})

rmse.li = lapply(yhat.li, function(yhat) {
  sqrt( mean( (yhat-test$y)^2 ) )
})
#
unlist(rmse.li)