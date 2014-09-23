## This function retuns the name of a hospital for given state and outcome with specified rank
## by default, it returns the best rank i.e rank# 1

rankhospital <- function(state, outcome, num = "best") {
        
        hosp.name.by.rank <- NULL
        
        ## get the file path
        data.path <- paste(getwd(),"/outcome-of-care-measures.csv",sep = "")
        
        ## read the data by treating Not Available as NAs
        data <- read.csv(file(data.path), na.strings = "Not Available") 
        
        outcome.col.no <- NULL
        
        ## Check that state and outcome are valid
        if(!(state %in% data[,7])){
                stop("invalid state") ## Stop execution for invalid state given and pass error message  
        }
        else if(outcome == "heart attack"){
                outcome.col.no <- 11 ## assign relevant column# for heart attack
        }   
        else if(outcome == "heart failure"){
                outcome.col.no <- 17 ## assign relevant column# for heart failure
        } 
        else if(outcome == "pneumonia"){
                outcome.col.no <- 23 ## assign relevant column# for pneumonia
        } 
        else{
                stop("invalid outcome") ## Stop execution for invalid outcome given and pass error message  
        }
        
        ## filter the data by given state(column# 7 - State)
        data.by.state <- subset(data, data[,7]==state)
        
        ## change the relevant outcome column from factor to numeric
        data.by.state[,outcome.col.no] <- as.numeric(data.by.state[,outcome.col.no])
        
        ## order the data in ascending order of 30-day death rate 
        ## for relevant outcome(i.e heart attack, heartfailure and pneumonia) by excluding NAs
        arrange.by.outcome <- order(data.by.state[,outcome.col.no], data.by.state[,2], na.last = NA)
        data.by.state.ordered <- data.by.state[arrange.by.outcome,]
        
        if(num == "best"){
                hosp.name.by.rank <- as.character(data.by.state.ordered[1,2])
        }
        else if(num == "worst"){
                ## get the row count from ordered data.frame without NAs
                row.count <- nrow(data.by.state.ordered)
                
                ## get the last row from ordered data.frame that gives worst case
                hosp.name.by.rank <- as.character(data.by.state.ordered[row.count,2])
        }
        else{
                ## get the hospital name from ordered data.frame by row index
                hosp.name.by.rank <- as.character(data.by.state.ordered[num,2] )
        }
        
        ## return the hospital name of given rank
        hosp.name.by.rank
}

###################################Test Cases#############################################
## > source("rankhospital.R")
## > rankhospital("TX", "heart failure", 4)
## [1] "DETAR HOSPITAL NAVARRO"
## > rankhospital("MD", "heart attack", "worst")
## [1] "HARFORD MEMORIAL HOSPITAL"
## > rankhospital("MN", "heart attack", 5000)
## [1] NA
## > best("TX", "heart failure")
## [1] "FORT DUNCAN MEDICAL CENTER"
## > best("TX", "heart failure", "best")
## [1] "FORT DUNCAN MEDICAL CENTER"
##########################################################################################