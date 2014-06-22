# 1 - Merges the training and the test sets to create one data set.
# 2 - Extracts only the measurements on the mean and standard deviation for each 
#     measurement. 
# 3 - Uses descriptive activity names to name the activities in the data set
# 4 - Appropriately labels the data set with descriptive variable names. 
# 5 - Creates a second, independent tidy data set with the average of each variable 
#     for each activity and each subject. 


# part 1
make_tidy_dataset <- function() {

## Load features set
features <- read.table("./features.txt")

## Load test data Sets
y_test <- read.table("./test/y_test.txt", quote = "\"")
X_test <- read.table("./test/X_test.txt", quote = "\"")
s_test <- read.table("./test/subject_test.txt", quote = "\"")

## Load train data sets
y_train <- read.table("./train/y_train.txt", quote="\"")
X_train <- read.table("./train/X_train.txt", quote="\"")
s_train <- read.table("./train/subject_train.txt", quote="\"")

## bind train data 
train <- cbind(s_train, y_train,  X_train) 

## bind test data
test <- cbind(s_test, y_test, X_test)

## merge test and train data
dataset <- rbind(test, train)

## build array of variable names
var_names <- c('subject', 'activity', as.character(features[,2]))

colnames(dataset) <- var_names

# Part 2 Extract the mean and std measurements 
measurements  <- grep( "subject|activity|std|mean" , var_names, ignore.case = F )
 
## subset measurements 
dataset <- dataset[, measurements]


# Part 3 and 4 Setting descriptive names and do naming cleanup

# Convert from text to factor
dataset[,2] <- as.factor(dataset[,2])

# Change from activity id to more descriptive name
levels(dataset[,2]) <- gsub("1", "WALKING",            levels(dataset[,2]))
levels(dataset[,2]) <- gsub("2", "WALKING_UPSTAIRS",   levels(dataset[,2]))
levels(dataset[,2]) <- gsub("3", "WALKING_DOWNSTAIRS", levels(dataset[,2]))
levels(dataset[,2]) <- gsub("4", "SITTING",            levels(dataset[,2]))
levels(dataset[,2]) <- gsub("5", "STANDING",           levels(dataset[,2]))
levels(dataset[,2]) <- gsub("6", "LAYING",             levels(dataset[,2]))

# Remove '()'  from variable names
colnames(dataset) <- gsub("\\(\\)", "", colnames(dataset))

# Remove duplicate 'BodyBody' from variable names
colnames(dataset) <- gsub("BodyBody", "Body", colnames(dataset))

# Remove 't' and 'f' prefixes from Body and Gravity fields
colnames(dataset) <- gsub("fBody|tBody", "Body", colnames(dataset))
colnames(dataset) <- gsub("tGravity", "Gravity", colnames(dataset))

# Part 5 Do name cleanup and save

# Split data set by subject and activity
split_list <- split(dataset, list(dataset$activity, dataset$subject))

# Calculate the average for each split
mean_split_list <- lapply(split_list, colMeans)

# Build tidy data frame from result list
tidy <- as.data.frame(t(as.data.frame(mean_split_list, optional = T)))
    
write.table(tidy, file = "tidy_dataset.txt", sep = " ", row.names = FALSE)
}