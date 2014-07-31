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


scatterPlot <- rCharts$new()
scatterPlot$setLib( "scatter")


scatterPlot$set(
  data = lapply(
    list(
      pointData = plotData
      , repLoess = repLoess
      , demLoess = demLoess
    ),
    to_json, orient = "records", json = F
  )
  , height = 400
  , width = 800
)

scatterPlot

