complete <- function(directory, id = 1:332) {
    
  ## get the count of monitor ids to calculate the mean
  monitor.id.count <- length(id)
  ##print(monitor.id.count)
  nobs <- numeric(monitor.id.count)
    
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
    
    ##logical statement to remove NA values
    data.good <- complete.cases(data)
    
    ##get the number of rows with complete values(without NA)
    nobs[i] <- nrow(data[data.good,])
    
  }
  
  ##create data frame with id, nobs as columns
  data.output <- data.frame(id = id, nobs = nobs)
  
  ## return the data frame
  data.output
}