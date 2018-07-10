Getting and Cleaning Data Coursera Project

This repository contains:
1. A README.md file describing the process in getting and cleaning given data
2. run_analysis.R script that was used to obtain a tidy data
3. A text file tidydata.txt containing the tidy data set
4. CodeBook.md describing the contents of the tidy data set

Creating The Data Set

This is a step by step procedure on getting and cleaning given data that was done by run_analysis.R.

1. Download the given file and unzip it to a folder called 'data'
2. Load features, activity, testing and training data
3. Merge training and testing sets to create one data set keeping only columns for measurements on the mean and standard deviation
4. Convert contents of the activity into a descriptive activity names and features data with descriptive variable names
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject
6. Write the data set into a text file called 'tidydata.txt'
