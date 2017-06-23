# load packages

library(tidyverse)

# step 1: reads data files and merge the train and test files to single file

subject_train <- read.table("subject_train.txt")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")

subject_test <- read.table("subject_test.txt")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")

features <- read.table("features.txt")


# add variable names

names(subject_train) <- "subject_id"
names(subject_test) <- "subject_id"

names(X_train) <- features$V2
names(y_train) <- "activity_id"

names(X_test) <- features$V2
names(y_test) <- "activity_id"

#merge into single table

train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)
data <- rbind(train, test)


#retain subject_id, activity_id, and columns with mean, std

data1 <- data[,grep("id|mean|std", names(data))]

# update activity descriptions into new filed called 'activity', and remove the original columns 
#"activity_id" to keep it lean

data2 <- data1 %>% 
        mutate(
        activity = factor(activity_id, labels = c("Walking", "Walking Upstairs", "Walking Downstairs", 
                                                  "Sitting", "Standing", "Laying"))
        )%>%
        select(-activity_id)

# finally, step5, create another tidy data set with only the averages by subject, activity combination;
# and then, write to a datafile.

data3 <- data2 %>%
        group_by(subject_id, activity) %>%
        summarize_all(funs(mean(.,na.rm=TRUE))) %>%
        write.csv("tidy.csv", row.names = FALSE)



