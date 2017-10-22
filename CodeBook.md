## Getting and Cleaning Data Course Project Code Book

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).


CLEANING AND MERGING THE DATA AND INFORMATION:
----------------------------------------------

The labels, IDs, and activities are cleaned up a bit and combined with the data table
to facilitate readability.

Columns for variables containing means and standard deviations are extracted and the training and test
datasets are merged to create one dataset.

The merged dataset is divided into groups, in a list, with each group containing information on one
individual and one activity. Each variable in each group is averaged and the result is presented in a
table that lists the variables in the columns and subject ID and activity in the rows.


VARIABLES:
----------

#### subjectid  
&nbsp;&nbsp;&nbsp;&nbsp;Id number for the individual (range: 1-3)  
&nbsp;&nbsp;&nbsp;&nbsp;format: integer  
&nbsp;&nbsp;&nbsp;&nbsp;unit: none  

#### activity
&nbsp;&nbsp;&nbsp;&nbsp;Activity performed (values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
&nbsp;&nbsp;&nbsp;&nbsp;format: factor  
&nbsp;&nbsp;&nbsp;&nbsp;unit: N/A  

#### tbodyacc.mean.x  
#### tbodyacc.mean.y  
#### tbodyacc.mean.z  
&nbsp;&nbsp;&nbsp;&nbsp;Mean body acceleration in X, Y, and Z directions  
&nbsp;&nbsp;&nbsp;&nbsp;format: numeric  
&nbsp;&nbsp;&nbsp;&nbsp;unit: g  
&nbsp;&nbsp;&nbsp;&nbsp;domain: time  

#### tbodyacc.std.x  
#### tbodyacc.std.y  
#### tbodyacc.std.z  
&nbsp;&nbsp;&nbsp;&nbsp;Standard deviation of body acceleration in X, Y, and Z directions  
&nbsp;&nbsp;&nbsp;&nbsp;format: numeric  
&nbsp;&nbsp;&nbsp;&nbsp;unit: g  
&nbsp;&nbsp;&nbsp;&nbsp;domain: time  

#### tgravityacc.mean.x
#### tgravityacc.mean.y
#### tgravityacc.mean.z
&nbsp;&nbsp;&nbsp;&nbsp;Mean gravity acceleration in X, Y, and Z directions  
&nbsp;&nbsp;&nbsp;&nbsp;format: numeric  
&nbsp;&nbsp;&nbsp;&nbsp;unit: g  
&nbsp;&nbsp;&nbsp;&nbsp;domain: time  

tgravityacc.std.x
tgravityacc.std.y
tgravityacc.std.z
        Standard deviation of gravity acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: time
tbodyaccjerk.mean.x
tbodyaccjerk.mean.y
tbodyaccjerk.mean.z
        Mean quick motion acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: time
tbodyaccjerk.std.x
tbodyaccjerk.std.y
tbodyaccjerk.std.z
        Standard deviation of quick motion acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: time
tbodygyro.mean.x
tbodygyro.mean.y
tbodygyro.mean.z
        Mean angular velocity in X, Y, and Z directions
        format: numeric
        unit: radians/second
        domain: time
tbodygyro.std.x
tbodygyro.std.y
tbodygyro.std.z
        Standard deviation of angular velocity in X, Y, and Z directions
        format: numeric
        unit: radians/second
        domain: time
tbodygyrojerk.mean.x
tbodygyrojerk.mean.y
tbodygyrojerk.mean.z
        Mean quick-motion angular velocity in X, Y, and Z directions
        format: numeric
        unit: radians/second
        domain: time
tbodygyrojerk.std.x
tbodygyrojerk.std.y
tbodygyrojerk.std.z
        Standard deviation of quick-motion angular velocity in X, Y, and Z directions
        format: numeric
        unit: radians/second
        domain: time
tbodyaccmag.mean
	Mean total body acceleration magnitude
        format: numeric
        unit: g
        domain: time
tbodyaccmag.std
        Standard deviation of total body acceleration magnitude
        format: numeric
        unit: g
        domain: time
tgravityaccmag.mean
        Mean total gravity acceleration magnitude
        format: numeric
        unit: g
        domain: time
tgravityaccmag.std
        Standard deviation of total gravity acceleration magnitude
        format: numeric
        unit: g
        domain: time
tbodyaccjerkmag.mean
        Mean total quick-motion body acceleration magnitude
        format: numeric
        unit: g
        domain: time
tbodyaccjerkmag.std
        Standard deviation of total quick-motion body acceleration magnitude
        format: numeric
        unit: g
        domain: time
tbodygyromag.mean
        Mean total angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: time
tbodygyromag.std
        Standard deviation of total angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: time
tbodygyrojerkmag.mean
        Mean total quick-motion angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: time
tbodygyrojerkmag.std
        Standard deviation of total quick-motion angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: time
fbodyacc.mean.x
fbodyacc.mean.y
fbodyacc.mean.z
        Mean body acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: frequency
fbodyacc.std.x
fbodyacc.std.y
fbodyacc.std.z
        Standard deviation of body acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: frequency
fbodyacc.meanfreq.x
fbodyacc.meanfreq.y
fbodyacc.meanfreq.z
        Mean frequency of body acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: frequency
fbodyaccjerk.mean.x
fbodyaccjerk.mean.y
fbodyaccjerk.mean.z
        Mean quick-motion body acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: frequency
fbodyaccjerk.std.x
fbodyaccjerk.std.y
fbodyaccjerk.std.z
        Standard deviation of quick-motion body acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: frequency
fbodyaccjerk.meanfreq.x
fbodyaccjerk.meanfreq.y
fbodyaccjerk.meanfreq.z
        Mean frequency of quick-motion body acceleration in X, Y, and Z directions
        format: numeric
        unit: g
        domain: frequency
fbodygyro.mean.x
fbodygyro.mean.y
fbodygyro.mean.z
        Mean angular velocity in X, Y, and Z directions
        format: numeric
        unit: radians/second
        domain: frequency
fbodygyro.std.x
fbodygyro.std.y
fbodygyro.std.z
        Standard deviation of angular velocity in X, Y, and Z directions
        format: numeric
        unit: radians/second
        domain: frequency
fbodygyro.meanfreq.x
fbodygyro.meanfreq.y
fbodygyro.meanfreq.z
        Mean frequency of body acceleration in X, Y, and Z directions
        format: numeric
        unit: radians/second
        domain: frequency
fbodyaccmag.mean
        Mean total body acceleration magnitude
        format: numeric
        unit: g
        domain: frequency
fbodyaccmag.std
        Standard deviation of total body acceleration magnitude
        format: numeric
        unit: g
        domain: frequency
fbodyaccmag.meanfreq
        Mean frequency of total body acceleration magnitude
        format: numeric
        unit: g
        domain: frequency
fbodybodyaccjerkmag.mean
        Mean total quick-motion body acceleration magnitude
        format: numeric
        unit: g
        domain: frequency
fbodybodyaccjerkmag.std
        Standard deviation of total quick-motion body acceleration magnitude
        format: numeric
        unit: g
        domain: frequency
fbodybodyaccjerkmag.meanfreq
        Mean frequency of total quick-motion body acceleration magnitude
        format: numeric
        unit: g
        domain: frequency
fbodybodygyromag.mean
        Mean total angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: frequency
fbodybodygyromag.std
        Standard deviation of total angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: frequency
fbodybodygyromag.meanfreq
        Mean frequency of total angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: frequency
fbodybodygyrojerkmag.mean
        Mean total quick-motion angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: frequency
fbodybodygyrojerkmag.std
        Standard deviation of total quick-motion angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: frequency
fbodybodygyrojerkmag.meanfreq
        Mean frequency of total quick-motion angular velocity magnitude
        format: numeric
        unit: radians/second
        domain: frequency
angletbodyaccmean.gravity
	Mean angle of body acceleration
        format: numeric
      	unit: radians
angletbodyaccjerkmean.gravitymean
        Mean angle of quick-motion body acceleration
	format: numeric
	unit: radians
angletbodygyromean.gravitymean
	Mean angle of angular velocity
	format: numeric
	unit: radians
angletbodygyrojerkmean.gravitymean
	Mean angle of quick-motion angular velocity
	format: numeric
	unit: radians
anglex.gravitymean
angley.gravitymean
anglez.gravitymean
	Mean angle of gravity in X, Y, and Z directions
	format: numeric
	unit: radians
