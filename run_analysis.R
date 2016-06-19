library(dplyr)

#Read the test files into the workspace
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subj_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Read the train files into the workspace
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subj_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Read the features and activity labels into the workspace
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Renames the column names for the test and train subject data sets
subject_test <- rename(subj_test, Subject = V1)
subject_train <- rename(subj_train, Subject = V1)

#Combines the participant and the activity they are performing
test <- cbind(y_test, subject_test)
train <- cbind(y_train, subject_train)

#Renames the activity labels dataset to V1 and Activity
activity_labels <- rename(activity_labels, V1 = V1, Activity = V2)

#Combines the activity performed id with the activity name
test1 <- inner_join(test, activity_labels, by = "V1")
train1 <- inner_join(train, activity_labels, by = "V1")

#Adds the column names from the X dataset
colnames(x_test) <- features[, 2]
colnames(x_train) <- features[, 2]

#Combines the X dataset and the activity and subjet datasets
test2 <- cbind(test1, x_test)
train2 <- cbind(train1, x_train)

#Cleans unused column
test3 <- test2[, -1]
train3 <- train2[, -1]

#Selects columns that contain mean and standard deviation
test4 <- select(test3, contains("Subject"), contains("Activity"),
                contains("mean"), contains("std"))
train4 <- select(train3, contains("Subject"), contains("Activity"),
                contains("mean"), contains("std"))

#Combines the test and train data
combined_data <- rbind(train4, test4)

#Cleans the column names
names(combined_data) <- gsub("Acc", "accelerometer", names(combined_data))
names(combined_data) <- gsub("^t", "time", names(combined_data))
names(combined_data) <- gsub("^f", "frequency", names(combined_data))
names(combined_data) <- gsub("Gyro", "gyroscope", names(combined_data))
names(combined_data) <- gsub("Mag", "magnitude", names(combined_data))
names(combined_data) <- gsub("BodyBody", "body", names(combined_data))
names(combined_data) <- gsub("Body", "body", names(combined_data))
names(combined_data) <- gsub("\\(", "", names(combined_data))
names(combined_data) <- gsub("\\)", "", names(combined_data))
names(combined_data) <- gsub("\\-", "", names(combined_data))
names(combined_data) <- gsub("\\,", "", names(combined_data))

#Creates the tidy data set consisting of the mean for each Subject
#and the activity they are performing
tidy_dataset <- (combined_data %>%
                   group_by(Subject, Activity) %>%
                   summarise_each(funs(mean)))

#Writes the tidy data set
write.table(tidy_dataset, "./tidy_dataset.txt", 
            row.names = FALSE)

#Reads the tidy data set to the workspace for review
testme <- read.table("./tidy_dataset.txt", header = TRUE)
