# Run the corresponding commands to run a
# RTutor Problem Sets of Chapters 2 and 3 in your browser

# Set base.dir to the directory of this file
# Possibly adapt if you don't open from a RStudio Project
base.dir = paste0(rstudioapi::getActiveProject(),"/RTutor")

library(RTutor)

# Chapter 2
setwd(file.path(base.dir,"2a"))
show.ps("ps_2a",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)

setwd(file.path(base.dir,"2b"))
show.ps("ps_2b",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)

# Chapter 3
setwd(file.path(base.dir,"3a"))
show.ps("ps_3a",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)

setwd(file.path(base.dir,"3b"))
show.ps("ps_3b",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)


# Introduction and Chapter 1
# The problem sets in chapter 1 are designed to be solved in RStudio.
# Go to the problem set folder, open the .Rmd file.
# Work through the problem set and check your solutions via 
# Addins -> RTutor -> Check Problem Set

# If you like you can also solve those problem sets in the shiny web interface
# by running the corresponding code below


setwd(file.path(base.dir,"0_Intro"))
show.ps("Intro",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)

setwd(file.path(base.dir,"1a"))
show.ps("ps_1a_icecream",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)

setwd(file.path(base.dir,"1b"))
show.ps("ps_1b",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)

setwd(file.path(base.dir,"1c"))
show.ps("ps_1c",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)

setwd(file.path(base.dir,"1d"))
show.ps("ps_1d",auto.save.code = TRUE,show.revert.btn = TRUE,show.data.exp = FALSE)