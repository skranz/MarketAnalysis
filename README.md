This repository contains the material for my course

## Market Analysis with Econometrics and Machine Learning

taught by Sebastian Kranz at Ulm University. The course was adapted during the Corona crisis as an open online course and has many interactive elements.

### Shiny apps with videos and quizzes

For an illustration of the course take a look at the shiny app with videos and quizzes for chapter 2b (Random Forests and Causal Forests):

[https://mm.econ.mathematik.uni-ulm.de/public/ma-2b/](https://mm.econ.mathematik.uni-ulm.de/public/ma-2b/)

### Interactive RTutor problem sets

Each section also has an interactive [RTutor](https://skranz.github.io/RTutor/) problem set where you work yourself through the material in R. You can automatically check your solutions and get hints. Here is a demo for Section 2b on shinyapps.io:

[https://skranz.shinyapps.io/MarketAnalysis_2b/](https://skranz.shinyapps.io/MarketAnalysis_2b/)

(Note that the density of xkcd comics in the awards strongly increases from Section 2a onwards.) Given my limited budget I only have a free shinyapps.io account which has quite limited monthly usage hours. To solve the RTutor problem sets, you should install them on your own computer (explained further below) or solve them on the rstudio cloud here:

[https://rstudio.cloud/project/1361010](https://rstudio.cloud/project/1361010)

Take a look at the README in the rstudio cloud project. Also [this youtube video](http://www.youtube.com/watch?v=_yUX5erDozQ&t=1m7s) helps to get started with the first RTutor problem set, which is designed to be solved inside RStudio.

### Course content

The course consists of the following 3 chapters.

**Chapter 1** directly starts with an example illustrating why historical sales data may yield very misleading results if we want to estimate a demand function for a product. We then work through the econometric background focusing on endogeniety problems and approaches for estimating causal effects. Here are the links to the video quiz shiny apps:

  - Bob's Ice Cream Business: [https://mm.econ.mathematik.uni-ulm.de/public/ma-1a/](https://mm.econ.mathematik.uni-ulm.de/public/ma-1a/)

  - Linear Regression and Endogeneity Problems: [https://mm.econ.mathematik.uni-ulm.de/public/ma-1b/](https://mm.econ.mathematik.uni-ulm.de/public/ma-1b/)

  - Control Variables, Regression Anatomy and Instrumental Variables: [https://mm.econ.mathematik.uni-ulm.de/public/ma-1c/](https://mm.econ.mathematik.uni-ulm.de/public/ma-1c/)
  
  - Tests and False Discoveries: [https://mm.econ.mathematik.uni-ulm.de/public/ma-1d/](https://mm.econ.mathematik.uni-ulm.de/public/ma-1d/)
  

**Chapter 2** contrasts econometric modelling with the typical machine learning approach and covers some prediction algorithms like random forests. We discuss which questions can be well treated as classical prediction problems and in which situations good prediction accuracy on a test data set may not be a relevant criterion for the actual question we are interested in. We also illustrate causal forests, which is a novel method to identify heterogeneous causal effects in experiments.

  - Machine Learning Intro & Lasso Regressions: [https://mm.econ.mathematik.uni-ulm.de/public/ma-2a/](https://mm.econ.mathematik.uni-ulm.de/public/ma-2a/)

  - Trees and Forests (including Causal Forests): [https://mm.econ.mathematik.uni-ulm.de/public/ma-2b/](https://mm.econ.mathematik.uni-ulm.de/public/ma-2b/)


**Chapter 3** covers discrete choice models.

  - Discrete Choice Experiments and the Conditional Logit Model: [https://mm.econ.mathematik.uni-ulm.de/public/ma-3a/](https://mm.econ.mathematik.uni-ulm.de/public/ma-3a/)

  - Exploring Substitution Patterns Between Products and the Mixed Logit Model: [https://mm.econ.mathematik.uni-ulm.de/public/ma-3b/](https://mm.econ.mathematik.uni-ulm.de/public/ma-3b/)

### Local Installation for RTutor Problem Sets

To locally install the RTutor problem sets download and extract the [ZIP](https://github.com/skranz/MarketAnalysis/archive/master.zip) of the [MarketAnalysis Github repository](https://github.com/skranz/MarketAnalysis).

Then run `setup/install_packages.R` to install all required packages and look at `setup/setup.html` to get started ([here](http://econ.mathematik.uni-ulm.de/marketanalysis/setup.html) is a weblink). The instructions were created for the course at Ulm university where the problem sets where hosted on Moodle. If you have downloaded the Github version of the course, you find all problem sets in the directory `RTutor` (Of course, you won't be able to submit your solved problem sets anywhere if you are not a student at Ulm University who takes the course.)

To run the web-based problem sets starting from Section `2a`, open the file `RTutor/run_ps.R` and the follow the steps described there.
