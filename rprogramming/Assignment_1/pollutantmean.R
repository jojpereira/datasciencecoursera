pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  ## get the count of monitor ids to calculate the mean
  monitor.id.count <- length(id)
  ##print(monitor.id.count)
  sum.data <- 0
  total.data <- 0
  
  for (i in 1:monitor.id.count){
    if(id[i] < 10){
      full.path <- paste(getwd(),"/",directory,"/00",id[i],".csv",sep = "")
      ##print(full.path)
    }
    else if(id[i] < 100){
      full.path <- paste(getwd(),"/",directory,"/0",id[i],".csv",sep = "")
      ##print(full.path)
    }
    else{
      full.path <- paste(getwd(),"/",directory,"/",id[i],".csv",sep = "")
      ##print(full.path)
    }
    
    ## create connection to the file
    con <- file(full.path)
    
    ##reading entire data from csv file
    data <- read.csv(con)
    column.data <- data[,pollutant]
    
    ##logical statement to remove NA values
    column.data.good <- complete.cases(column.data)
    
    ##sum up all the values for specific column data
    sum.data <- sum.data + sum(column.data[column.data.good])
    
    ##get the count of column data
    total.data <- total.data + length(column.data[column.data.good])
  }
  
  ## Overall mean for all monitor ids specified
  mean.data <- sum.data/total.data
  
  ##return mean
  mean.data
}