## **CodeBook.md**


--------------------------------------------------------------------------------


### **Activity Labels**

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

### **Subject**

You can find subject_train, subject_test files in the data set. Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

### **Variables**

  * **Each variable except "subject" and "ActivityLabels" is normalized and bounded within [-1,1].** 

 [1]   "Subject"                          "ActivityLabels"                   "Avrg-tBodyAcc-mean()-X"          
 [4] "Avrg-tBodyAcc-mean()-Y"           "Avrg-tBodyAcc-mean()-Z"           "Avrg-tBodyAcc-std()-X"           
 [7] "Avrg-tBodyAcc-std()-Y"            "Avrg-tBodyAcc-std()-Z"            "Avrg-tGravityAcc-mean()-X"       
[10] "Avrg-tGravityAcc-mean()-Y"        "Avrg-tGravityAcc-mean()-Z"        "Avrg-tGravityAcc-std()-X"        
[13] "Avrg-tGravityAcc-std()-Y"         "Avrg-tGravityAcc-std()-Z"         "Avrg-tBodyAccJerk-mean()-X"      
[16] "Avrg-tBodyAccJerk-mean()-Y"       "Avrg-tBodyAccJerk-mean()-Z"       "Avrg-tBodyAccJerk-std()-X"       
[19] "Avrg-tBodyAccJerk-std()-Y"        "Avrg-tBodyAccJerk-std()-Z"        "Avrg-tBodyGyro-mean()-X"         
[22] "Avrg-tBodyGyro-mean()-Y"          "Avrg-tBodyGyro-mean()-Z"          "Avrg-tBodyGyro-std()-X"          
[25] "Avrg-tBodyGyro-std()-Y"           "Avrg-tBodyGyro-std()-Z"           "Avrg-tBodyGyroJerk-mean()-X"     
[28] "Avrg-tBodyGyroJerk-mean()-Y"      "Avrg-tBodyGyroJerk-mean()-Z"      "Avrg-tBodyGyroJerk-std()-X"      
[31] "Avrg-tBodyGyroJerk-std()-Y"       "Avrg-tBodyGyroJerk-std()-Z"       "Avrg-tBodyAccMag-mean()"         
[34] "Avrg-tBodyAccMag-std()"           "Avrg-tGravityAccMag-mean()"       "Avrg-tGravityAccMag-std()"       
[37] "Avrg-tBodyAccJerkMag-mean()"      "Avrg-tBodyAccJerkMag-std()"       "Avrg-tBodyGyroMag-mean()"        
[40] "Avrg-tBodyGyroMag-std()"          "Avrg-tBodyGyroJerkMag-mean()"     "Avrg-tBodyGyroJerkMag-std()"     
[43] "Avrg-fBodyAcc-mean()-X"           "Avrg-fBodyAcc-mean()-Y"           "Avrg-fBodyAcc-mean()-Z"          
[46] "Avrg-fBodyAcc-std()-X"            "Avrg-fBodyAcc-std()-Y"            "Avrg-fBodyAcc-std()-Z"           
[49] "Avrg-fBodyAccJerk-mean()-X"       "Avrg-fBodyAccJerk-mean()-Y"       "Avrg-fBodyAccJerk-mean()-Z"      
[52] "Avrg-fBodyAccJerk-std()-X"        "Avrg-fBodyAccJerk-std()-Y"        "Avrg-fBodyAccJerk-std()-Z"       
[55] "Avrg-fBodyGyro-mean()-X"          "Avrg-fBodyGyro-mean()-Y"          "Avrg-fBodyGyro-mean()-Z"         
[58] "Avrg-fBodyGyro-std()-X"           "Avrg-fBodyGyro-std()-Y"           "Avrg-fBodyGyro-std()-Z"          
[61] "Avrg-fBodyAccMag-mean()"          "Avrg-fBodyAccMag-std()"           "Avrg-fBodyBodyAccJerkMag-mean()" 
[64] "Avrg-fBodyBodyAccJerkMag-std()"   "Avrg-fBodyBodyGyroMag-mean()"     "Avrg-fBodyBodyGyroMag-std()"     
[67] "Avrg-fBodyBodyGyroJerkMag-mean()" "Avrg-fBodyBodyGyroJerkMag-std()" 

#### **Features**

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

#### **The set of variables that were estimated from these signals are:** 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

#### **Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:**

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

