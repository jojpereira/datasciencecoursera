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
* All the measurements related to accelaration are measured in unit 'g' and measurements related to gyroscope are measured in 'radians/second'
* First row represents the column names starting from "Activity", "Subject" and so on
* Each row contains 68 values that belong to respective column names in order 

        1. Activity - string that represents the activity labels that can be one of "WALKING", 
                      "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING"
        2. Subject - represents the age group that can be 19-48 (all together 30 age group). 
                     It uses 1-30 to represent the each age group starting from 19 and ending at 48
        3. Body_Acc_x_t_Mean - represents the mean body acceleration signal in the x direction in the time domain
        4. Body_Acc_y_t_Mean - represents the mean body acceleration signal in the y direction in the time domain
        5. Body_Acc_z_t_Mean - represents the mean body acceleration signal in the z direction in the time domain
        6. Body_Acc_x_t_Std - represents the standard deviation body acceleration signal in the x direction in the time domain
        7. Body_Acc_y_t_Std - represents the standard deviation body acceleration signal in the y direction in the time domain
        8. Body_Acc_z_t_Std - represents the standar deviation body acceleration signal in the z direction in the time domain
        9. Gravity_Acc_x_t_Mean - represents the mean gravity acceleration signal in the x direction in the time domain
        10.Gravity_Acc_y_t_Mean - represents the mean gravity acceleration signal in the y direction in the time domain
        11.Gravity_Acc_z_t_Mean - represents the mean gravity acceleration signal in the z direction in the time domain 
        12.Gravity_Acc_x_t_Std - represents the standard deviation gravity acceleration signal in the x direction in the time domain
        13.Gravity_Acc_y_t_Std - represents the standard deviation gravity acceleration signal in the y direction in the time domain
        14.Gravity_Acc_z_t_Std - represents the standard deviation gravity acceleration signal in the z direction in the time domain
        15.Body_Acc_Jerk_x_t_Mean - represents the mean jerk body acceleration signal in the x direction in the time domain
        16.Body_Acc_Jerk_y_t_Mean - represents the mean jerk body acceleration signal in the y direction in the time domain
        17.Body_Acc_Jerk_z_t_Mean - represents the mean jerk body acceleration signal in the z direction in the time domain
        18.Body_Acc_Jerk_x_t_Std - represents the standard deviation of jerk acceleration signal in the x direction in the time domain
        19.Body_Acc_Jerk_y_t_Std- represents the standard deviation of jerk acceleration signal in the y direction in the time domain
        20.Body_Acc_Jerk_z_t_Std- represents the standard deviation of jerk acceleration signal in the z direction in the time domain
        21.Body_Gyro_x_t_Mean - represents the mean gyroscope signal in the x direction in the time domain
        22.Body_Gyro_y_t_Mean - represents the mean gyroscope signal in the y direction in the time domain
        23.Body_Gyro_z_t_Mean - represents the mean gyroscope signal in the z direction in the time domain
        24.Body_Gyro_x_t_Std - represents the standard deviation of gyroscope signal in the x direction in the time domain
        25.Body_Gyro_y_t_Std - represents the standard deviation of gyroscope signal in the y direction in the time domain
        26.Body_Gyro_z_t_Std - represents the standard deviation of gyroscope signal in the z direction in the time domain
        27.Body_Gyro_Jerk_x_t_Mean - represents the mean of gyroscope jerk signal in the x direction in the time domain
        28.Body_Gyro_Jerk_y_t_Mean - represents the mean of gyroscope jerk signal in the y direction in the time domain
        29.Body_Gyro_Jerk_z_t_Mean - represents the mean of gyroscope jerk signal in the z direction in the time domain
        30.Body_Gyro_Jerk_x_t_Std - represents the std of gyroscope jerk signal in the x direction in the time domain
        31.Body_Gyro_Jerk_y_t_Std - represents the std of gyroscope jerk signal in the y direction in the time domain
        32.Body_Gyro_Jerk_z_t_Std - represents the std of gyroscope jerk signal in the z direction in the time domain
        33.Body_Acc_Mag_Mean - represents mean of the magnitude of the body accelaration signal
        34.Body_Acc_Mag_Std - represents std of the magnitude of the body accelaration signal
        35.Gravity_Acc_Mag_Mean - represents mean of the magnitude of the gravity accelaration signal
        36.Gravity_Acc_Mag_Std - represents std of the magnitude of the gravity accelaration signal
        37.Body_Acc_Jerk_Mag_Mean - represents mean of the magnitude of the body jerk accelaration signal
        38.Body_Acc_Jerk_Mag_Std - represents std of the magnitude of the body jerk accelaration signal
        39.Body_Gyro_Mag_Mean - represents mean of the magnitude of the body gyroscope signal
        40.Body_Gyro_Mag_Std - represents std of the magnitude of the body gyroscope signal
        41.Body_Gyro_Jerk_Mag_Mean - represents mean of the magnitude of the body jerk gyroscope signal
        42.Body_Gyro_Jerk_Mag_Std - represents std of the magnitude of the body jerk gyroscope signal
        43.Body_Acc_x_f_Mean - represents the mean body acceleration signal in the x direction in the frequency domain
        44.Body_Acc_y_f_Mean - represents the mean body acceleration signal in the y direction in the frequency domain
        45.Body_Acc_z_f_Mean - represents the mean body acceleration signal in the z direction in the frequency domain
        46.Body_Acc_x_f_Std - represents the std body acceleration signal in the x direction in the frequency domain
        47.Body_Acc_y_f_Std - represents the std body acceleration signal in the y direction in the frequency domain
        48.Body_Acc_z_f_Std - represents the std body acceleration signal in the z direction in the frequency domain
        49.Body_Acc_Jerk_x_f_Mean - represents the mean body acceleration jerk signal in the x direction in the frequency domain
        50.Body_Acc_Jerk_y_f_Mean - represents the mean body acceleration jerk signal in the y direction in the frequency domain
        51.Body_Acc_Jerk_z_f_Mean - represents the mean body acceleration jerk signal in the z direction in the frequency domain
        52.Body_Acc_Jerk_x_f_Std - represents the std of body acceleration jerk signal in the x direction in the frequency domain
        53.Body_Acc_Jerk_y_f_Std - represents the std of body acceleration jerk signal in the y direction in the frequency domain
        54.Body_Acc_Jerk_z_f_Std - represents the std of body acceleration jerk signal in the z direction in the frequency domain
        55.Body_Gyro_x_f_Mean - represents the mean of body gyroscope signal in the x direction in the frequency domain
        56.Body_Gyro_y_f_Mean - represents the mean of body gyroscope signal in the y direction in the frequency domain
        57.Body_Gyro_z_f_Mean - represents the mean of body gyroscope signal in the z direction in the frequency domain
        58.Body_Gyro_x_f_Std - represents the std of body gyroscope signal in the x direction in the frequency domain
        59.Body_Gyro_y_f_Std - represents the std of body gyroscope signal in the y direction in the frequency domain
        60.Body_Gyro_z_f_Std - represents the std of body gyroscope signal in the z direction in the frequency domain
        61.Body_Acc_Mag_f_Mean - represents the mean of the magnitude of the body accelaration signal in the frequency domain
        62.Body_Acc_Mag_f_Std - represents the std of the magnitude of the body accelaration signal in the frequency domain
        63.Body_Acc_Jerk_Mag_f_Mean - represents the mean of the magnitude of the body accelaration jerk signal in the frequency domain
        64.Body_Acc_Jerk_Mag_f_Std - represents the std of the magnitude of the body accelaration jerk signal in the frequency domain
        65.Body_Gyro_Mag_f_Mean - represents the mean of the magnitude of the body gyroscope signal in the frequency domain
        66.Body_Gyro_Mag_f_Std - represents the std of the magnitude of the body gyroscope signal in the frequency domain
        67.Body_Gyro_Jerk_Mag_f_Mean - represents the mean of the magnitude of the body gyroscope jerk signal in the frequency domain
        68.Body_Gyro_Jerk_Mag_f_Std - represents the std of the magnitude of the body gyroscope jerk signal in the frequency domain
       

<h4> grouped_tidy_data.txt </h4>
* It will be generated once the run_analysis.R script is executed
* It consists of tidy data set in 180 rows and 67 columns
* First row represents the column names
* First column ("Group(Activity - Subject)") is listing all possible combination of Activity and Subject
 (e.g: LAYING_1 => Activity- "LAYING" and Subject- 1, 
       WALKING_DOWNSTAIRS_2 => Activity- "WALKING_DOWNSTAIRS" and Subject- 2)
* All other columns represent the each measurements by taking the average for each group mentioned above
* Column names have been appended by "Avg"
* Each row contains 67 values that belong to respective column names in the same order

##### NOTE: grouped_tidy_data.txt is the final tidy data that has been uploaded in coursera

<hr>__________________________________________________</hr>
<p> © Karthick (karthyuom@gmail.com) </p>
