<h1>Getting and Cleaning Data</h1>
<hr>__________________________________________________</hr>
### This consists of programming assignments related to **Getting and Cleaning Data conducted by Coursera**

* It contains samsung data, run_analysis.R script, and two output files named as full_tidy_data.txt and grouped_tidy_data.txt

<h4> run_analysis.R </h4>

* This is the R script, responsible for loading training and testing data set from given samsung_data (see /samsung_data/README.md for understanding about the data set and additional materials)
* It has function called prepareTidyData that has been called in the script itself (commented as #main)
* The function does following steps to create tidy data set

        1. Load the train and test data from samsung_data and check both of them for any missing values
        2. It merges both train and test data together afterwards
        3. Load activity labels and subjects for each train and test data set and merge them 
        4. Activity labels have been replaced with decriptive names (i.e 1 => WALKING, 2 => WALKING_UPSTAIRS, 
           3 => WALKING_DOWNSTAIRS, 4 => SITTING, 5 => STANDING, 6 => LAYING)
        5. From train and tes data filter only the measurements with mean and std (i.e 66 columns are choosen) 
        6. Add activity label and subject for filtered data in 1st and 2nd columns respectively
        7. Assign descriptive column names for each columns 
        8. Save the tidy data in to the same directory as a text file named as full_tidy_data.txt
        9. Calculate the mean for each combination of activity and subject from the data prepared in the step 5
           (i.e 180 groups have been created , groups = activity x subject = 6 x 30 = 180)
        10. Assign column names for the data prepare from step 9. All the measurement column names have 
            been appended by "Avg" at the end (e.g: "Body_Acc_x_t_Mean_Avg"))
        11. Save the grouped tidy data in to the same directory as a text file named as grouped_tidy_data.txt
        
<h4> full_tidy_data.txt </h4>
* It will be generated once the run_analysis.R script is executed.
* It consists of tidy data set in 10299 rows and 68 columns.
* First row represents the column names starting from "Activity", "Subject" and so on
* Each row contains 68 values that belong to respective column names in order

<h4> grouped_tidy_data.txt </h4>
* It will be generated once the run_analysis.R script is executed
* It consists of tidy data set in 180 rows and 67 columns
* First row represents the column names
* First column ("Group(Activity - Subject)") is listing all possible combination of Activity and Subject
 (e.g: LAYING_1 => Activity- "LAYING" and Subject- 1, 
       WALKING_DOWNSTAIRS_2 => Activity- "WALKING_DOWNSTAIRS" and Subject- 2)
* Each row contains 68 values that belong to respective column names in the same order
 
##### NOTE: grouped_tidy_data.txt is the final tidy data that has been uploaded in coursera

<hr>__________________________________________________</hr>
<p> © Karthick (karthyuom@gmail.com) </p>
