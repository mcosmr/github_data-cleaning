This project contains the following files:
---------------------------------------------------------------------
Run_analysis.R: R script  that does the following. 

	- Merges the training and the test sets to create one data set.
	- Extracts only the measurements on the mean and standard deviation for each measurement. 
	- set descriptive activity names to name the activities in the data set
	with appropriately labels the data set with descriptive variable names. 
	- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

CodeBook.md: A file that contains the description of the variables and the transformations or work  performed to clean up the data 

---------------------------------------------------------------------
Steps to work on this course project
---------------------------------------------------------------------

	- set the working directory to ("/~R")
	- Download the data source into a folder name "data" on your local drive (R folder from your RStudio). You'll have a UCI HAR Dataset folder.
 	- store the run_analysis.R file in R folder, then set it as your working directory using setwd() function in RStudio.
	Run source("run_analysis.R"), then it will generate a new file data_average_tidy.txt in the data folder contained in the working directory ("~R").

---------------------------------------------------------------------
Dependencies
---------------------------------------------------------------------

run_analysis.R file will help you to install the dependencies automatically. It depends on reshape2 and (only if required. included as a comment) data.table.