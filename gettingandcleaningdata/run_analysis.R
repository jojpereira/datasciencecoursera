##preapare merged tidy data set from given train and test samsung data set
prepareTidyData <- function(path){
        
        #load training and testing data sets
        train.data <- read.table(paste(path, "/train/X_train.txt", sep = ""))
        print(paste("train data dimension: ", nrow(train.data), "x", ncol(train.data), sep =""))
        
        #check for missing values in the train data
        if(nrow(train.data[complete.cases(train.data),]) == nrow(train.data)){
                message("No missing values in the train data set")
        }
        else{
                train.data <- train.data[complete.cases(train.data),]     
        }
        
        test.data <- read.table(paste(path, "/test/X_test.txt", sep = ""))
        test.data <- test.data[complete.cases(test.data),]
        print(paste("test data columns: ", nrow(test.data), "x", ncol(test.data), sep =""))
        
        
        #check for missing values in the test data
        if(nrow(test.data[complete.cases(test.data),]) == nrow(test.data)){
                message("No missing values in the test data set")
        }
        else{
                test.data <- test.data[complete.cases(test.data),]     
        }
        
        #merge train and test data together
        merged.data <- rbind(train.data, test.data)
        
        #load the training and testing data activities and merge them
        train.activities <- read.table(paste(path, "/train/y_train.txt", sep = ""))
        test.activities <- read.table(paste(path, "/test/y_test.txt", sep = ""))        
        merged.activities <- rbind(train.activities, test.activities)
        
        #assign each activities with respective descriptive names     
        merged.activities[merged.activities==1] <- "WALKING"
        merged.activities[merged.activities==2] <- "WALKING_UPSTAIRS"
        merged.activities[merged.activities==3] <- "WALKING_DOWNSTAIRS"
        merged.activities[merged.activities==4] <- "SITTING"
        merged.activities[merged.activities==5] <- "STANDING"
        merged.activities[merged.activities==6] <- "LAYING"        
        
        #load training and testing subjects and merge them
        train.subjects <- read.table(paste(path, "/train/subject_train.txt", sep = ""))
        test.subjects <- read.table(paste(path, "/test/subject_test.txt", sep = ""))        
        merged.subjects <- rbind(train.subjects, test.subjects)
        
        #filter the merged data only with mean and std for all measurements
        #column indices: 1-6 => tBodyAcc, 41-46 => tGravityAcc, 81-86 => tBodyAccJerk, 121-126 => tBodyGyro,161-166 => tBodyGyroJerk,
        #				 201-202 => tBodyAccMag, 214-215 => tGravityAccMag, 227-228 => tBodyAccJerkMag, 240-241 => tBodyGyroMag, 
        #				 253-254 => tBodyGyroJerkMag, 266-271 => fBodyAcc, 345-350 => fBodyAccJerk, 424-429 => fBodyGyro, 
        #				 503-504 => fBodyAccMag, 516-517 => fBodyAccJerkMag, 529-530 => fBodyGyroMag, 542- 543 => fBodyGyroJerkMag
        
        column.filter <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543) 
        filtered.data <- merged.data[,column.filter]
        
        #combine data with labels and subjects at 1st and 2nd column respectively
        complete.data <- cbind(merged.activities, merged.subjects, filtered.data)
        print(paste("complete data dimension: ", nrow(complete.data), "x", ncol(complete.data), sep =""))
        
        #assign column names for final tidy data 
        colnames(complete.data) <- c("Activity","Subject","Body_Acc_x_t_Mean","Body_Acc_y_t_Mean","Body_Acc_z_t_Mean","Body_Acc_x_t_Std","Body_Acc_y_t_Std","Body_Acc_z_t_Std",
                                     "Gravity_Acc_x_t_Mean","Gravity_Acc_y_t_Mean","Gravity_Acc_z_t_Mean","Gravity_Acc_x_t_Std","Gravity_Acc_y_t_Std","Gravity_Acc_z_t_Std",
                                     "Body_Acc_Jerk_x_t_Mean","Body_Acc_Jerk_y_t_Mean","Body_Acc_Jerk_z_t_Mean","Body_Acc_Jerk_x_t_Std","Body_Acc_Jerk_y_t_Std","Body_Acc_Jerk_z_t_Std",
                                     "Body_Gyro_x_t_Mean","Body_Gyro_y_t_Mean","Body_Gyro_z_t_Mean","Body_Gyro_x_t_Std","Body_Gyro_y_t_Std","Body_Gyro_z_t_Std",
                                     "Body_Gyro_Jerk_x_t_Mean","Body_Gyro_Jerk_y_t_Mean","Body_Gyro_Jerk_z_t_Mean","Body_Gyro_Jerk_x_t_Std","Body_Gyro_Jerk_y_t_Std","Body_Gyro_Jerk_z_t_Std",
                                     "Body_Acc_Mag_Mean","Body_Acc_Mag_Std","Gravity_Acc_Mag_Mean","Gravity_Acc_Mag_Std","Body_Acc_Jerk_Mag_Mean","Body_Acc_Jerk_Mag_Std","Body_Gyro_Mag_Mean",
                                     "Body_Gyro_Mag_Std","Body_Gyro_Jerk_Mag_Mean","Body_Gyro_Jerk_Mag_Std","Body_Acc_x_f_Mean","Body_Acc_y_f_Mean","Body_Acc_z_f_Mean",
                                     "Body_Acc_x_f_Std","Body_Acc_y_f_Std","Body_Acc_z_f_Std","Body_Acc_Jerk_x_f_Mean","Body_Acc_Jerk_y_f_Mean","Body_Acc_Jerk_z_f_Mean",
                                     "Body_Acc_Jerk_x_f_Std","Body_Acc_Jerk_y_f_Std","Body_Acc_Jerk_z_f_Std","Body_Gyro_x_f_Mean","Body_Gyro_y_f_Mean","Body_Gyro_z_f_Mean",
                                     "Body_Gyro_x_f_Std","Body_Gyro_y_f_Std","Body_Gyro_z_f_Std","Body_Acc_Mag_f_Mean",
                                     "Body_Acc_Mag_f_Std","Body_Acc_Jerk_Mag_f_Mean","Body_Acc_Jerk_Mag_f_Std","Body_Gyro_Mag_f_Mean","Body_Gyro_Mag_f_Std",
                                     "Body_Gyro_Jerk_Mag_f_Mean","Body_Gyro_Jerk_Mag_f_Std")
        
        
        #save full tidy data set into local disk
        write.table(complete.data, file ="full_tidy_data.txt", quote = FALSE, row.names = FALSE)
        print("full tidy data set has been saved...")
        
        #calculate the mean for each combination of activity and subject (result in 180 groups)
        #groups = activity*subject = 6*30 = 180
        mean.data.by.act.sub <- aggregate(complete.data[,3:ncol(complete.data)], by = c(list(complete.data$Activity),list(complete.data$Subject)), mean)
        mean.data.grouped <- paste(mean.data.by.act.sub[,1], mean.data.by.act.sub[,2], sep = "_")
        mean.data.grouped <- cbind(mean.data.grouped, mean.data.by.act.sub[,3:ncol(mean.data.by.act.sub)])
        print(paste("Grouped data dimension: ", nrow(mean.data.grouped), "x", ncol(mean.data.grouped), sep =""))
        
        #assign column names. all the measurement column names have been appended by "Avg"
        colnames(mean.data.grouped)[1] <- "Group(Activity - Subject)"
        colnames(mean.data.grouped)[2:ncol(mean.data.grouped)] <- lapply(colnames(mean.data.grouped)[2:ncol(mean.data.grouped)], function(x) paste(x, "_Avg", sep = ""))
        #print(colnames(mean.data.grouped)[2:ncol(mean.data.grouped)])
        
        #print the summary of first 6 rows
        print(head(mean.data.grouped))
        
        #total no of rows
        print(paste("Total records(rows): ",nrow(mean.data.grouped),sep=""))
        
        #save grouped tidy data set by average into local disk
        write.table(mean.data.grouped, file ="grouped_tidy_data.txt", quote = FALSE, row.names = FALSE)        
        print("grouped tidy data set has been saved...")
        
}

#main 
print("Prepare tidy data set...")
prepareTidyData("./samsung_Data/")
