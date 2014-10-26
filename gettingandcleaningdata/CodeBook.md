<h1>Human Activity Recognition Using Samsung Smartphones Dataset</h1>
<hr>__________________________________________________</hr>
<h3> Data Cleansing </h3>

<p> The repository is capable of doing preprocessing on given data set. The original data for Samsung smartphones are downaloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  </p>

* It contains samsung data, run_analysis.R script, and two output files named as full_tidy_data.txt and grouped_tidy_data


* run_analysis.R is the R script, responsible for loading training and testing data set from given samsung_data (see /samsung_data/README.md for understanding about the data set and additional materials)
* It processes tha data and create tidy data sets for later analysis
* Upon running the R script, it will generate to .txt files named as full_tidy_data.txt and grouped_tidy_data.txt
        
<h4> full_tidy_data.txt </h4>
* There are 68 columns together with activity label and subject
* It will be generated once the run_analysis.R script is executed.
* It consists of tidy data set in 10299 rows and 68 columns.
* First row represents the column names starting from "Activity", "Subject" and so on
* Each row contains 68 values that belong to respective column names in order 

        1. Activity - string that represents the activity labels that can be one of "WALKING", 
                      "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING"
        2. Subject - represents the age group that can be 19-48 (all together 30 age group). 
                     It uses 1-30 to represent the each age group starting from 19 and ending at 48
        3. Body_Acc_x_t_Mean
        4. Body_Acc_y_t_Mean
        5. Body_Acc_z_t_Mean
        6. Body_Acc_x_t_Std
        7. Body_Acc_y_t_Std
        8. Body_Acc_z_t_Std
        9. Gravity_Acc_x_t_Mean
        10.Gravity_Acc_y_t_Mean
        11.Gravity_Acc_z_t_Mean 
        12.Gravity_Acc_x_t_Std
        13.Gravity_Acc_y_t_Std
        14.Gravity_Acc_z_t_Std
        15.Body_Acc_Jerk_x_t_Mean
        16.Body_Acc_Jerk_y_t_Mean
        17.Body_Acc_Jerk_z_t_Mean
        18.Body_Acc_Jerk_x_t_Std
        19.Body_Acc_Jerk_y_t_Std
        20.Body_Acc_Jerk_z_t_Std
        21.Body_Gyro_x_t_Mean
        22.Body_Gyro_y_t_Mean
        23.Body_Gyro_z_t_Mean
        24.Body_Gyro_x_t_Std
        25.Body_Gyro_y_t_Std
        26.Body_Gyro_z_t_Std
        27.Body_Gyro_Jerk_x_t_Mean
        28.Body_Gyro_Jerk_y_t_Mean
        29.Body_Gyro_Jerk_z_t_Mean
        30.Body_Gyro_Jerk_x_t_Std
        31.Body_Gyro_Jerk_y_t_Std
        32.Body_Gyro_Jerk_z_t_Std
        33.Body_Acc_Mag_Mean
        34.Body_Acc_Mag_Std
        35.Gravity_Acc_Mag_Mean
        36.Gravity_Acc_Mag_Std
        37.Body_Acc_Jerk_Mag_Mean
        38.Body_Acc_Jerk_Mag_Std
        39.Body_Gyro_Mag_Mean
        40.Body_Gyro_Mag_Std
        41.Body_Gyro_Jerk_Mag_Mean
        42.Body_Gyro_Jerk_Mag_Std
        43.Body_Acc_x_f_Mean
        44.Body_Acc_y_f_Mean
        45.Body_Acc_z_f_Mean
        46.Body_Acc_x_f_Std
        47.Body_Acc_y_f_Std
        48.Body_Acc_z_f_Std
        49.Body_Acc_Jerk_x_f_Mean
        50.Body_Acc_Jerk_y_f_Mean
        51.Body_Acc_Jerk_z_f_Mean
        52.Body_Acc_Jerk_x_f_Std
        53.Body_Acc_Jerk_y_f_Std
        54.Body_Acc_Jerk_z_f_Std
        55.Body_Gyro_x_f_Mean
        56.Body_Gyro_y_f_Mean
        57.Body_Gyro_z_f_Mean
        58.Body_Gyro_x_f_Std
        59.Body_Gyro_y_f_Std
        60.Body_Gyro_z_f_Std
        61.Body_Acc_Mag_f_Mean
        62.Body_Acc_Mag_f_Std
        63.Body_Acc_Jerk_Mag_f_Mean
        64.Body_Acc_Jerk_Mag_f_Std
        65.Body_Gyro_Mag_f_Mean
        66.Body_Gyro_Mag_f_Std
        67.Body_Gyro_Jerk_Mag_f_Mean
        68.Body_Gyro_Jerk_Mag_f_Std
       

<h4> grouped_tidy_data.txt </h4>
* There are 
* It will be generated once the run_analysis.R script is executed
* It consists of tidy data set in 180 rows and 67 columns
* First row represents the column names
* First column ("Group(Activity - Subject)") is listing all possible combination of Activity and Subject
 (e.g: LAYING_1 => Activity- "LAYING" and Subject- 1, 
       WALKING_DOWNSTAIRS_2 => Activity- "WALKING_DOWNSTAIRS" and Subject- 2)
* Each row contains 68 values that belong to respective column names in the same order
* ##### NOTE: This is the final tidy data that has been uploaded in coursera

<hr>__________________________________________________</hr>
<p> ?? Karthick (karthyuom@gmail.com) </p>
