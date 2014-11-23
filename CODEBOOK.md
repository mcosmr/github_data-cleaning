CODE BOOK 
---------------------------------------------

This file contains the desciption of the variables use in the project, the data, and any transformations or work that you performed to clean up the data.

---------------------------------------------
The data source
---------------------------------------------

Data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

---------------------------------------------
Data Set Information
---------------------------------------------

The dataset includes the following files:
	
- 'README.txt': provides information about the experiment

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

---------------------------------------------
Variables information
---------------------------------------------

Variables contained in this project were stimated upon a group of 30 volunteers within  an age bracket of 19-48 years(subject) . Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Variables:

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fbodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag
 
The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

---------------------------------------------
Transformation:
---------------------------------------------

Following the instructions given in the project's instroduction , the following transformation were made:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The sequence of operantions goes as follow 

* Create one R script called run_analysis

* Merges the training and the test sets to create one data set.

- read X_test.txt
- read y test.txt
- read X_train.txt
- read y_train.txt
- read subjec_train.txt
- read features_data
- read activity_labels	
- set names xdata_test columns using features_data
- set column name subject test and train 
- set names xdata_train columns using features_data
- set ytrain_data and ytest_data column name
- Set activity labels in ytest and ytrain data using index activities labes
- getting  test data  and train data all together 

* Extracts only the measurements on the mean and standard deviation for each measurement. 

* Use descriptive activity names to name the activities in the data set with the following criteria:

- All lower case when posible
- Not duplicated
- Not have underscores or dots or white spaces


* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Set new tidy data set 

* Write new tidy data set


---------------------------------------------
Output of this Project
---------------------------------------------

The output of this project will be an independent tidy data set with the average of each variable for each activity and each subject.
