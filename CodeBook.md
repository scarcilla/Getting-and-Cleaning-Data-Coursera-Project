**Code Book for the Getting and Cleaning Data Coursera Project**

This code book describes contents of tidydata.txt on this repository.


**DATA**

The tidydata.txt file contains space-separated values with the first row as the variable names, other else are the values.

**VARIABLES**

The file contains 68 variables and can be grouped as Identifiers and Measurements

*Identifiers*

  [1] Subject - an integer ranging from 1 to 30
  
  [2] ActivityName - activity performed by a person; factor with 6 levels: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

*Measurements*

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
Meaurements can be classified into two domains: *Time-domain signals* and *Frequency-domain signals*:

  *Time-domain Signals*
  - Average body acceleration in X, Y and Z directions
  
 [1] timeBodyAccelerometermeanX                 
 [2] timeBodyAccelerometermeanY                 
 [3] timeBodyAccelerometermeanZ 
  - Standard deviation of the body acceleration in X, Y and Z directions
 
 [4] "timeBodyAccelerometerstdX"                  
 [5] "timeBodyAccelerometerstdY"                  
 [6] "timeBodyAccelerometerstdZ"     
  - Average gravity acceleration in X, Y and Z directions 
 
 [7] "timeGravityAccelerometermeanX"              
 [8] "timeGravityAccelerometermeanY"              
 [9] "timeGravityAccelerometermeanZ" 
 - Standard deviation of the body acceleration in X, Y and Z directions
 
[10] "timeGravityAccelerometerstdX"               
[11] "timeGravityAccelerometerstdY"               
[12] "timeGravityAccelerometerstdZ"   
- Average body acceleration jerk (derived) in X, Y and Z directions 

[13] "timeBodyAccelerometerJerkmeanX"             
[14] "timeBodyAccelerometerJerkmeanY"             
[15] "timeBodyAccelerometerJerkmeanZ"
- Standard Deviation of the body acceleration jerk (derived) in X, Y and Z directions 

[16] "timeBodyAccelerometerJerkstdX"              
[17] "timeBodyAccelerometerJerkstdY"              
[18] "timeBodyAccelerometerJerkstdZ"  
- Average body angular velocity in X, Y and Z directions 

[19] "timeBodyGyroscopemeanX"                     
[20] "timeBodyGyroscopemeanY"                     
[21] "timeBodyGyroscopemeanZ"   
- Standard Deviation of the body angular velocity in X, Y and Z directions 

[22] "timeBodyGyroscopestdX"                      
[23] "timeBodyGyroscopestdY"                      
[24] "timeBodyGyroscopestdZ"   
- Average body angular velocity jerk (derived) in X, Y and Z directions

[25] "timeBodyGyroscopeJerkmeanX"                 
[26] "timeBodyGyroscopeJerkmeanY"                 
[27] "timeBodyGyroscopeJerkmeanZ"   
- Standard Deviation of the body angular velocity jerk (derived) in X, Y and Z directions

[28] "timeBodyGyroscopeJerkstdX"                  
[29] "timeBodyGyroscopeJerkstdY"                  
[30] "timeBodyGyroscopeJerkstdZ"    
- Average and standard deviation of the magnitude of body acceleration

[31] "timeBodyAccelerometerMagnitudemean"         
[32] "timeBodyAccelerometerMagnitudestd"   
- Average and standard deviation of the magnitude of gravity acceleration

[33] "timeGravityAccelerometerMagnitudemean"      
[34] "timeGravityAccelerometerMagnitudestd"    
- Average and standard deviation of the magnitude of body acceleration jerk (derived)

[35] "timeBodyAccelerometerJerkMagnitudemean"     
[36] "timeBodyAccelerometerJerkMagnitudestd"      
- Average and standard deviation of the magnitude of body angular velocity

[37] "timeBodyGyroscopeMagnitudemean"             
[38] "timeBodyGyroscopeMagnitudestd"     
- Average and standard deviation of the magnitude of body angular velocity jerk (derived)

[39] "timeBodyGyroscopeJerkMagnitudemean"         
[40] "timeBodyGyroscopeJerkMagnitudestd"  

*Frequency-domain Signals*
- Average body acceleration in X, Y and Z directions

[41] "frequencyBodyAccelerometermeanX"            
[42] "frequencyBodyAccelerometermeanY"            
[43] "frequencyBodyAccelerometermeanZ"  
- Standard deviation of the body acceleration in X, Y and Z directions

[44] "frequencyBodyAccelerometerstdX"             
[45] "frequencyBodyAccelerometerstdY"             
[46] "frequencyBodyAccelerometerstdZ"   
- Average body acceleration jerk (derived) in X, Y and Z directions

[47] "frequencyBodyAccelerometerJerkmeanX"        
[48] "frequencyBodyAccelerometerJerkmeanY"        
[49] "frequencyBodyAccelerometerJerkmeanZ"   
- Standard deviation of the body acceleration jerk (derived) in X, Y and Z directions

[50] "frequencyBodyAccelerometerJerkstdX"         
[51] "frequencyBodyAccelerometerJerkstdY"         
[52] "frequencyBodyAccelerometerJerkstdZ"    
- Average body angular velocity in X, Y and Z directions

[53] "frequencyBodyGyroscopemeanX"                
[54] "frequencyBodyGyroscopemeanY"                
[55] "frequencyBodyGyroscopemeanZ"  
- Standard deviation of the body angular velocity in X, Y and Z directions

[56] "frequencyBodyGyroscopestdX"                 
[57] "frequencyBodyGyroscopestdY"                 
[58] "frequencyBodyGyroscopestdZ"     
- Average and standard deviation of the magnitude of body acceleration

[59] "frequencyBodyAccelerometerMagnitudemean"    
[60] "frequencyBodyAccelerometerMagnitudestd"    
- Average and standard deviation of the magnitude of body acceleration jerk (derived)

[61] "frequencyBodyAccelerometerJerkMagnitudemean"
[62] "frequencyBodyAccelerometerJerkMagnitudestd" 
- Average and standard deviation of the magnitude of body angular velocity

[63] "frequencyBodyGyroscopeMagnitudemean"        
[64] "frequencyBodyGyroscopeMagnitudestd"      
- Average and standard deviation of the magnitude of body angular velocity jerk (derived)

[65] "frequencyBodyGyroscopeJerkMagnitudemean"    
[66] "frequencyBodyGyroscopeJerkMagnitudestd" 

**TRANSFORMATIONS**

The following transformations were applied to the source data:
1. Training and testing sets were merged keeping only columns for measurements on the mean and standard deviation
2. Convert contents of the activity into a descriptive activity names and features data with descriptive variable names
3. A second, independent tidy data set with the average of each variable for each activity and each subject was created
