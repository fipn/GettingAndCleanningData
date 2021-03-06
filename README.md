# Coursera GettingAndCleanningData  
# Course Project 
-------------------------------------------------------------------------------

This directory contains the 0.1 release of the run_analysis script.

The run_analysis script performs a set of operations in the R language to 
collect, clean and present a tidy data set ready for later analysis.

A CodeBook file is provided to describe the variables, data and the 
operations performed to to clean up the input data set.

## Summary
-------------------------------------------------------------------------------

The script performs the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each 
	measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each 
	variable for each activity and each subject. 
6. Saves the tidy data set in a csv formatted space separated text file, called 
	tidy_dataset.txt, in the current workspace directory

## Input data source
-------------------------------------------------------------------------------

The data source used for this project is available at

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data description is available at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Usage instructions
-------------------------------------------------------------------------------

1. Download the data source described above
2. Unzip the data source into directory DIR
3. Copy the script run_analysis.R into DIR/UCI HAR Dataset/
4. Open R Studio, setting its working directory to DIR/UCI HAR Dataset/
5. Source the run_analysis.R script, and then call make_tidy_dataset()
6. Wait until the function returns. This may range from a few seconds to a 
	few minutes, based on the computer configuration
	
The resulting tidy data set may be loaded in R Studio tidy data set:
``` 
 read.table("./tidy_dataset.txt", header = TRUE)
```

## Assumptions
-------------------------------------------------------------------------------

To form the tidy data set, the following assumptions where made about the data:

1. Step 2 - Based on the data source README and associated files,the measurements 
	extracted consisted of the result of a text search for the tokens "std" and 
	"mean" on the variable names. Based on that search, the original data source
	was reduced from 561 features down to 79.
2. Step 3 - The resulting variables where modified to remove non-descriptive
	prefixes and sufixes, such as "t" or "f", and special symbols such as "("
	and ")"

## Results
-------------------------------------------------------------------------------

The script provides as a result a tidy data set since:

1. Each variable forms a column 
2. Each observation forms a row
3. Each type of observational unit forms a table

As described by (http://vita.had.co.nz/papers/tidy-data.pdf)
	
## License
-------------------------------------------------------------------------------

This project is released under the license described in LICENSE.