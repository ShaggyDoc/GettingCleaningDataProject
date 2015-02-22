
README

created 21/02/2015

This README accompanies tidydata.txt and run_analysis.R

Data was sourced from the links provided in the course project page:
	
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Once the zip file is expanded, a folder named 'UCI HAR Dataset' will be available.  This contains all the .txt data files required for the project.

This folder needs to be placed in your R working directory.

run_analysis.R is code that tidies the data in the UCI HAR Dataset folder as per the project instructions.

The output is a data table 'tidydata', which provides a list of averages measured for each subject for each activity.

To get to the tidydata dataset, the following manipulations were conducted:

1. untidy data was in 6 separate .txt files that were read into separate tables
2. the desired mean and std variables were selected on the 2 files containing the measured data
3. the data was combined into a single data frame using cbind and rbind
4. activity levels were changed into descriptive titles using base R direct match and replace
5. the stringr package was utilised to assist with changing the measured variable names into descriptive titles - the titles were gathered from the original data features.txt file, with non-standard punctuation removed.  Note that there is an error in some of the variable names, where they have the name "BodyBody". This was copied across from the original data and was not changed as it did not detract from the descriptive meaning.
6. Finally, using lapply within data.table, the average measurement for each of the variables for each subject per activity was calculated and saved as the data frame 'tidydata'.

The author acknowledges the run_analysis code is inefficient.  He has identified areas for improvement.  These areas will be revised to improve efficiency as time allows.

If you have any questions, please feel free to contact the author: shaggydoc162@gmail.com
