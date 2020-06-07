# Run the following commands to solve the
# RTutor Problem Set 2a in your browser

# Uncomment the setwd command and set the working directory to the
# directory where you have extracted your problem set files

# setwd("C:/your/directory/")

# Make sure that the package mlogitExtras is installed

if (!require(mlogitExtras)) install.packages("mlogitExtras",repos = c("https://skranz-repo.github.io/drat/",getOption("repos")))

library(RTutor)
show.ps("ps_3b",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)
