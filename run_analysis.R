#create one R script called run_analysis
# 1. Merges the training and the test sets to create one data set.

#if(!file.exists("./data")){dir.create("./data")}
library(reshape2)
#library(data.table)

#read X_test.txt
#read y test.txt

xtest_data <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest_data <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subjecttest_data <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

#read X_train.txt
#read y_train.txt
#read subjec_train.txt

xtrain_data <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain_data <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjecttrain_data <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

#read features_data
features_data <- read.table("./data/UCI HAR Dataset/features.txt")
#read activity_labels
activity_labels_data <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

#set names xdata_test columns using features_data
names(xtest_data) = features_data[,2]
#set column name subject test and train 
names(subjecttest_data) <- c("subject")
names(subjecttrain_data) <- c("subject")

#set names xdata_train columns using features_data
names(xtrain_data) = features_data[,2]

#set ytrain_data and ytest_data column name
names(ytest_data) <- c("activity")
names(ytrain_data) <- c("activity")


#Set activity labels in ytest and ytrain data using index activities labes

ytest_data$activity <- activity_labels_data[ytest_data$activity,2]
ytrain_data$activity <- activity_labels_data[ytrain_data$activity,2]

#getting all together test data and train data
testdata <- cbind(xtest_data, subjecttest_data,ytest_data)
traindata <- cbind(xtrain_data, subjecttrain_data,ytrain_data)

data_all <- rbind(testdata, traindata)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 

Data_mean_std <- data_all[,grep("mean\\(\\)|std\\(\\)|subject|activity", colnames(data_all))]

#Uses descriptive activity names to name the activities in the data set
#apropriately labels the data set with descriptive variable names. 
#criteria:
#All lower case when posible
#not duplicated
#not have underscores or dots or white spaces

tolower(names(Data_mean_std))
names(Data_mean_std) <- gsub("^t", "time", names(Data_mean_std))
names(Data_mean_std) <- gsub("^f", "frequency", names(Data_mean_std))
names(Data_mean_std) <- gsub("Acc", "accelorometer", names(Data_mean_std))
names(Data_mean_std) <- gsub("Gyro", "gyroscope", names(Data_mean_std))
names(Data_mean_std) <- gsub("Mag", "magnitude", names(Data_mean_std))
names(Data_mean_std) <- gsub("BodyBody", "body", names(Data_mean_std))
names(Data_mean_std) <- gsub("\\(\\)", "", names(Data_mean_std))

#library (reshape2) for using dcast function

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
data_average <- melt(Data_mean_std, id=c("subject","activity"))
data_average_tidy <- dcast(data_average, subject+activity ~ variable, mean)
print(head(data_average_tidy))

#set new tidy data set

write.table(data_average_tidy, "data/data_average_tidy.txt", row.names=FALSE)
  