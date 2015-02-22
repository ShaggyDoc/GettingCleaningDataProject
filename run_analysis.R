# read the subject vector for the test series as a table
testS <- read.table("./test/subject_test.txt", col.names = c("subject"))
# read the activity vector for the test series as a table
testY <- read.table("./test/Y_test.txt", col.names = c("activity"))
# read the recorded data for the test series as a table
testX <- read.table("./test/X_test.txt")
# Extract only the measurements on the mean and standard deviation for each measurement
# part 1: identify the correct columns from the features_info.txt and create a corresponding vector
subcols <- c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,294:296,345:350,373:375,424:429,452:454,503,504,513,516,517,526,529,530,539,542,543,552,555:561)
# part 2: apply this vector to subset the desired columns
testX <- testX[,subcols]
# bind the 3 test tables together as columns in a new table
test <- cbind(testS,testY,testX)
# repeat the same procedure for the training series
trainS <- read.table("./train/subject_train.txt", col.names = c("subject"))
trainY <- read.table("./train/Y_train.txt", col.names = c("activity"))
trainX <- read.table("./train/X_train.txt")
trainX <- trainX[,subcols]
train <- cbind(trainS,trainY,trainX)
# row bind the two tables from training and test series
data <- rbind(test,train)
# remove unnecessary intermediate tables
rm(testS,testY,testX,trainS,trainY,trainX,train,test)
# Use descriptive activity names to name the activities in the data set
data$activity[data$activity=="1"] <- "Walking"
data$activity[data$activity=="2"] <- "Walking_Upstairs"
data$activity[data$activity=="3"] <- "Walking_Downstairs"
data$activity[data$activity=="4"] <- "Sitting"
data$activity[data$activity=="5"] <- "Standing"
data$activity[data$activity=="6"] <- "Laying"
# Appropriately label the data set with descriptive variable names
# Part 1 - get and clean the variable names from the feature.txt file
feat <- read.table("./features.txt")
# Use the stringr package to remove unwanted characters
library("stringr", lib.loc="/Library/Frameworks/R.framework/Versions/3.1/Resources/library")
feat$V2 <- str_replace_all(feat$V2, "[^[:alnum:]]", "")
# remove unwanted variable names
feat <- feat[subcols,]
# Part 2 - label the dataset with the descriptive variable names
names(data)[3:88] <- feat$V2
# create a second, independent tidy data set with the average of each variable for each activity and each subject
DTdata <- data.table(data)
tidydata <- DTdata[,lapply(.SD, mean), by=c("activity","subject")]
tidydata <- tidydata[order(activity,subject)]