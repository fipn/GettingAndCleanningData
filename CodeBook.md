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

"BodyAcc.mean.X"           "BodyAcc.mean.Y"           "BodyAcc.mean.Z"          
"BodyAcc.std.X"            "BodyAcc.std.Y"            "BodyAcc.std.Z"           
"GravityAcc.mean.X"        "GravityAcc.mean.Y"        "GravityAcc.mean.Z"       
"GravityAcc.std.X"         "GravityAcc.std.Y"         "GravityAcc.std.Z"        
"BodyAccJerk.mean.X"       "BodyAccJerk.mean.Y"       "BodyAccJerk.mean.Z"      
"BodyAccJerk.std.X"        "BodyAccJerk.std.Y"        "BodyAccJerk.std.Z"       
"BodyGyro.mean.X"          "BodyGyro.mean.Y"          "BodyGyro.mean.Z"         
"BodyGyro.std.X"           "BodyGyro.std.Y"           "BodyGyro.std.Z"          
"BodyGyroJerk.mean.X"      "BodyGyroJerk.mean.Y"      "BodyGyroJerk.mean.Z"     
"BodyGyroJerk.std.X"       "BodyGyroJerk.std.Y"       "BodyGyroJerk.std.Z"      
"BodyAccMag.mean"          "BodyAccMag.std"           "GravityAccMag.mean"      
"GravityAccMag.std"        "BodyAccJerkMag.mean"      "BodyAccJerkMag.std"      
"BodyGyroMag.mean"         "BodyGyroMag.std"          "BodyGyroJerkMag.mean"    
"BodyGyroJerkMag.std"      "BodyAcc.mean.X.1"         "BodyAcc.mean.Y.1"        
"BodyAcc.mean.Z.1"         "BodyAcc.std.X.1"          "BodyAcc.std.Y.1"         
"BodyAcc.std.Z.1"          "BodyAcc.meanFreq.X"       "BodyAcc.meanFreq.Y"      
"BodyAcc.meanFreq.Z"       "BodyAccJerk.mean.X.1"     "BodyAccJerk.mean.Y.1"    
"BodyAccJerk.mean.Z.1"     "BodyAccJerk.std.X.1"      "BodyAccJerk.std.Y.1"     
"BodyAccJerk.std.Z.1"      "BodyAccJerk.meanFreq.X"   "BodyAccJerk.meanFreq.Y"  
"BodyAccJerk.meanFreq.Z"   "BodyGyro.mean.X.1"        "BodyGyro.mean.Y.1"       
"BodyGyro.mean.Z.1"        "BodyGyro.std.X.1"         "BodyGyro.std.Y.1"        
"BodyGyro.std.Z.1"         "BodyGyro.meanFreq.X"      "BodyGyro.meanFreq.Y"     
"BodyGyro.meanFreq.Z"      "BodyAccMag.mean.1"        "BodyAccMag.std.1"        
"BodyAccMag.meanFreq"      "BodyAccJerkMag.mean.1"    "BodyAccJerkMag.std.1"    
"BodyAccJerkMag.meanFreq"  "BodyGyroMag.mean.1"       "BodyGyroMag.std.1"       
"BodyGyroMag.meanFreq"     "BodyGyroJerkMag.mean.1"   "BodyGyroJerkMag.std.1"   
"BodyGyroJerkMag.meanFreq"

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------




Variables included are related to: 1. Triaxial acceleration from the accelerometer 2. Triaxial Angular velocity from the gyroscope. 3. A 561-feature vector with time and frequency domain variables. 4. Its activity label. 5. An identifier of the subject who carried out the e

Names of variables has prefix:

tBodyAcc
tGravityAcc
tBodyAccJerk
tBodyGyro
tBodyGyroJerk
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc
fBodyAccJerk
fBodyGyro
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
The variables estimated form signals are self-desctiptive in name and are added to names as suffix:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.
Units

train/Inertial Signals/body_gyro_x_train.txt: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.