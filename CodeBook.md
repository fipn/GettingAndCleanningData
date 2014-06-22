# GettingAndCleanningData CodeBook
-------------------------------------------------------------------------------

This codebook describes the steps performed to create the tidy data set 

## Description of variable names
-------------------------------------------------------------------------------

Based on the feature_info.txt file from the data source, the following 
variables where selected:

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* subject - numeric index used to identify each subject                    
	numeric in the range [1:30]
* activity - character index used to identify each action performed
	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING
	
Each of the following variables below follow the naming convention 
described in the features.txt and features_info.txt data source files, 

The variables estimated form signals are self-desctiptive in name and are added
to names as suffix:

mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency

The original "t" and "f" prefixes and "()" symbols were removed to make the 
variable names more descriptive.

Variables included are related to: 

1. Triaxial acceleration from the accelerometer 
2. Triaxial Angular velocity from the gyroscope. 
3. A 81 feature vector with with the average of time and frequency domain 
	variables. 
4. Its activity label. 
5. An identifier of the subject who carried out the activity

From the original data source, the average of each variable was taken to compose
the final tidy data set

*BodyAcc.mean.X              
*BodyAcc.std.X               
*GravityAcc.mean.X           
*GravityAcc.std.X            
*BodyAccJerk.mean.X          
*BodyAccJerk.std.X           
*BodyGyro.mean.X             
*BodyGyro.std.X              
*BodyGyroJerk.mean.X         
*BodyGyroJerk.std.X          
*BodyAccMag.mean             
*GravityAccMag.std           
*BodyGyroMag.mean            
*BodyGyroJerkMag.std         
*BodyAcc.mean.Z.1            
*BodyAcc.std.Z.1             
*BodyAcc.meanFreq.Z          
*BodyAccJerk.mean.Z.1        
*BodyAccJerk.std.Z.1         
*BodyAccJerk.meanFreq.Z      
*BodyGyro.mean.Z.1           
*BodyGyro.std.Z.1            
*BodyGyro.meanFreq.Z         
*BodyAccMag.meanFreq         
*BodyAccJerkMag.meanFreq     
*BodyGyroMag.meanFreq        
*BodyGyroJerkMag.meanFreq

*BodyAcc.mean.Y        
*BodyAcc.std.Y         
*GravityAcc.mean.Y     
*GravityAcc.std.Y      
*BodyAccJerk.mean.Y    
*BodyAccJerk.std.Y     
*BodyGyro.mean.Y       
*BodyGyro.std.Y        
*BodyGyroJerk.mean.Y   
*BodyGyroJerk.std.Y    
*BodyAccMag.std        
*BodyAccJerkMag.mean   
*BodyGyroMag.std       
*BodyAcc.mean.X.1      
*BodyAcc.std.X.1       
*BodyAcc.meanFreq.X    
*BodyAccJerk.mean.X.1  
*BodyAccJerk.std.X.1   
*BodyAccJerk.meanFreq.X
*BodyGyro.mean.X.1     
*BodyGyro.std.X.1      
*BodyGyro.meanFreq.X   
*BodyAccMag.mean.1     
*BodyAccJerkMag.mean.1 
*BodyGyroMag.mean.1    
*BodyGyroJerkMag.mean.1

*BodyAcc.mean.Z          
*BodyAcc.std.Z           
*GravityAcc.mean.Z       
*GravityAcc.std.Z        
*BodyAccJerk.mean.Z      
*BodyAccJerk.std.Z       
*BodyGyro.mean.Z         
*BodyGyro.std.Z          
*BodyGyroJerk.mean.Z     
*BodyGyroJerk.std.Z      
*GravityAccMag.mean      
*BodyAccJerkMag.std      
*BodyGyroJerkMag.mean    
*BodyAcc.mean.Y.1        
*BodyAcc.std.Y.1         
*BodyAcc.meanFreq.Y      
*BodyAccJerk.mean.Y.1    
*BodyAccJerk.std.Y.1     
*BodyAccJerk.meanFreq.Y  
*BodyGyro.mean.Y.1       
*BodyGyro.std.Y.1        
*BodyGyro.meanFreq.Y     
*BodyAccMag.std.1        
*BodyAccJerkMag.std.1    
*BodyGyroMag.std.1       
*BodyGyroJerkMag.std.1   

## Original Data Source
-------------------------------------------------------------------------------

The data source used for this project is available at

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data description is available at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
