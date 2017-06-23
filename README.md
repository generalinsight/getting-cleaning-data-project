# Getting and Ceaning Data Project

The project was to **read** the provided data set, on ["Human Activity Recognition Using Smartphones"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), **clean** the data set and **output** a tidy data set.

**Below are the steps to reproduce this process:**

* Provided data files are zip files. download & unzip [from here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* Below files to be moved to the current directory of R script. They are

        + features.txt
        + subject_train.txt
        + subject_test.txt
        + X_train.txt
        + X_test.txt
        + y_train.txt
        + y_test.txt

* Run the R scrip file (run_analysis.R). It requires 'tidyverse' package that can be downloaded from CRAN.

* The output file, the tidy data set, is named tidy.csv, will be outputted and saved in the same directory.

* More information on the data and analysis is contained in the codebook.md.