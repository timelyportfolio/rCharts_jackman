# get the newest version of rCharts
#devtools::install_github("ramnathv/rCharts")

library(rCharts)

# since I do not have the code to produce the data
# from the Rdata file
# I will just read in the csv files from the html

demLoess <- read.csv(
  "demLoess.csv"
  ,stringsAsFactors = F
)

repLoess <- read.csv(
  "repLoess.csv"
  ,stringsAsFactors = F
)

estimates <- read.csv(
  "estimates.csv"
  ,stringsAsFactors = F
)

plotData <- read.csv(
  "plotData.csv"
  ,stringsAsFactors = F
)

