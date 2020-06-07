# Installing packages used in Market Analysis with Econometrics and Machine Learning

# First install R and RStudio and then open this file

# Run the following commands from RStudio

#Installing useful packages from CRAN
install.packages("mlogit")
install.packages("googleVis")
install.packages("AER")
install.packages("estimatr")
install.packages("broom")
install.packages("lubridate")
install.packages("R.utils")
install.packages("readr")
install.packages("ggplot2")
install.packages("reshape2")
install.packages("dplyr")
install.packages("tidyr")
install.packages("randtoolbox")
install.packages("devtools")
install.packages("stringr")
#install.packages('installr')
install.packages("caret")
install.packages("skimr")
install.packages("rpart")
install.packages("rpart.plot")
install.packages("ranger")
install.packages("glmnet")
install.packages("BLPestimatoR")
install.packages("DiagrammeR")
install.packages("stargazer")
install.packages("evd")
install.packages("maxLik")

install.packages("recipes")
install.packages("forcats")
install.packages("grf")
install.packages("hdm")
install.packages("matrixStats")

install.packages("evd")
install.packages("maxLik")

# Use my own repository to install RTutor and other packages
options(repos=unique(c(getOption("repos"),"https://skranz-repo.github.io/drat/")))

install.packages("RTutor",repos=unique(c(getOption("repos"),"https://skranz-repo.github.io/drat/")))

install.packages("mlogitExtras",repos=unique(c(getOption("repos"),"https://skranz-repo.github.io/drat/")))

install.packages("sktools", repos=unique(c(getOption("repos"),"https://skranz-repo.github.io/drat/")))