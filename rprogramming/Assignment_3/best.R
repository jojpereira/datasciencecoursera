## This function read data from outcome-of-care-measures.csv and predict the best hospital
## based on given state(e.g TX, MD etc) and outcome(i.e. heart attack, heart failure and pneumonia)
## It returns the hospital by its name

best <- function(state, outcome) {
        ## get the file path
        data.path <- paste(getwd(),"/outcome-of-care-measures.csv",sep = "")
        
        ## read the data by treating Not Available as NAs
        data <- read.csv(file(data.path), na.strings = "Not Available") 
        
        outcome.col.no <- NULL
        
        ## Check that state and outcome are valid
        if(!(state %in% data[,7])){
                stop("invalid state") ## Stop execution and pass error message  
        }
        else if(outcome == "heart attack"){
                outcome.col.no <- 11 ## assign relevant column# for heart attack
        }   
        else if(outcome == "heart failure"){
                outcome.col.no <- 17 
        } 
        else if(outcome == "pneumonia"){
                outcome.col.no <- 23
        } 
        else{
                stop("invalid outcome")
        }
        
        ## filter the data by given state(column# 7 - State)
        data.by.state <- subset(data, data[,7]==state)
        
        ## change the relevant outcome column from factor to numeric
        data.by.state[,outcome.col.no] <- as.numeric(data.by.state[,outcome.col.no])
        
        ## order the data in ascending order of 30-day death rate 
        ## for relevant outcome(i.e heart attack, heartfailure and pneumonia)  by excluding NAs
        arrange.by.outcome <- order(data.by.state[,outcome.col.no], data.by.state[,2], na.last = NA)
        data.by.state.ordered <- data.by.state[arrange.by.outcome,]
        
        ## get the best hospital name(row# 1 column# 2) with lowest death rate for given outcome
        best.hosp.name <- data.by.state.ordered[1,2]
        
        
        ## return the best hospital name after converting it from factor to character
        as.character(best.hosp.name)
}

###################################Test Cases#############################################
## > source("best.R")
## > best("TX", "heart attack")
## [1] "CYPRESS FAIRBANKS MEDICAL CENTER"
## > best("TX", "heart failure")
## [1] "FORT DUNCAN MEDICAL CENTER"
## > best("MD", "heart attack")
## [1] "JOHNS HOPKINS HOSPITAL, THE"
## > best("MD", "pneumonia")
## [1] "GREATER BALTIMORE MEDICAL CENTER"
## > best("BB", "heart attack")
## Error in best("BB", "heart attack") : invalid state
## > best("NY", "hert attack")
## Error in best("NY", "hert attack") : invalid outcome
##########################################################################################