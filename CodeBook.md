
# Code Book

### Summary

Samsung smartphones used to capture movement tracking from 6 different activities by 30 volunteers; Captured data is proceessed for creating tidy data sets for subsequent analysis 

### Files Used

* **features.txt** : names of the features, 561 in total
* **activity_labels.txt** : describing the 6 activities with IDs
* **X_train.txt** :data for 21 of the 30 subjects; 7352 obs for 561 variables
* **subject_train.txt** : listing ID of volunteers for each of 7352 obs
* **y_train.txt** : listing activity id for each of 7352 obs
* **X-test.txt** : data for 9 of the 30 subjects; 2947 obs for 561 variables
* **subject_test.txt** : liting of ID of volunteers for each of 2947 obs
* **y_test.txt** : listing activity id for each of 2947 obs

**README.txt** and **features_info.txt** contains additional information on the data files.

### Files Not Used

Raw data files contained within "Inertial Signal" folders were not used, since they contained unprocessed signal data.

### Processing Steps

1. Data files read, column headers added; training and test sets were combined into single file.
2. The subject_id and activity_id columns retained, and then, all conlumns that did not contain mean() or std() were removed.
3. Activity_id updated to factors of activity names; then activity_id column removed.
4. Another tidy data set was created then by grouping the data for each subject and activity and summarizing with mean of every feature. a total of 180 rows are thus retained in this file - 30 subjects & 6 activities each.
5. Data set created in 4 was exported as csv file.