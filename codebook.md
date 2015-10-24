# Project Description

The experiment captured data from 30 volunteers performing each of 6 activities 

*Walking   
*Walking Upstairs   
*Walking Downstairs     
*Sitting   
*Standing  
*Laying   

The data collected included time domain and frequency domain signals.

#Study design and data processing

###Collection of the raw data

The data was collected by the accelerometer and gyroscope of the Samsung SII. 

###Raw Data Variables

The variables included time and frequency domain signals for various parameters. The signals are generated for each of the x,y and z axes. This data was then processed according to determine parameters such as the mean and standard deviation.

###Notes on original data

The data provided as raw data is technically already processed somewhat as it tabulates variables such as the mean and standard deviations of the file. This indicates some initial processing.

#Creating the tidy datafile

### Steps to generating the tidy data file

* Download the file
* Run the **run_analysis.R** file making sure that the file is in your working directory. The training and test data sets should also in the sub folders as in the \.zip file.

### Cleaning of the Data

The raw data is cleaned into a wide format tidy data set. Only the necessary variables of the mean and standard deviations are kept. The means are then calculated for each of these. Further details are provided in the **readme.md** file.

#Description of the variables in the result.txt file

The data set generated will be of dimensions 180 x 68. The first two columns refer to the subject number performing the activity and the activity being performed. The other 66 columns provide information on the processed variables. The processed variables are the averages of the means and the averages of the standard deviations of the variables in the original raw data. These are arranged by subject number and activity. 

###Variable 1 - Subject Number

*Class = Factor  
*Levels = 1,2,3,\.\.\.\.28,29,30  
*Unit of Measurement = None  

###Variable 2 - Activity

*Class = Factor
*Levels = Walking, Walking Upstairs,Walking Downstairs, Sitting, Standing, Laying
*Unit of Measurement = None

###Variables 3,4 and 5 - Means of Time Body Acceleration in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified


###Variable 6,7 and 8 - Standard Deviations of Time Body Acceleration in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 9,10 and 11 - Means of Time Gravity Acceleration in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 12,13 and 14 - Standard Deviations of Time Gravity Acceleration in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 15,16 and 17 - Means of Time Body Acceleration Jerk in X,Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 18,19 and 20 - Standard Deviations of Time Body Acceleration Jerk in X,Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 18,19 and 20 - Means of Time Body Acceleration Jerk in X,Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 21,22 and 23 - Means of Time Body Gyroscope in X,Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 24,25 and 26 - Standard Deviations of Time Body Gyroscope in X,Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 24,25 and 26 - Standard Deviations of Time Body Gyroscope in X,Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 27,28 and 29 - Means of Time Body Gyroscope Jerk in X,Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 30,31 and 32 - Standard Deviations of Time Body Gyroscope Jerk in X,Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 33 - Means of Time Body Acceleration Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 34 - Standard Deviations of Time Body Acceleration Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 35 - Means of Time Gravity Acceleration Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 36 - Standard Deviations of Time Gravity Acceleration Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 37 - Means of Time Body Acceleration Jerk Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 38 - Standard Deviations of Time Body Acceleration Jerk Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 39 - Means of Time Body Gyroscope Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 40 - Standard Deviations of Time Body Gyroscope Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 41 - Standard Deviations of Time Body Gyroscope Jerk Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 42 - Standard Deviations of Time Body Gyroscope Jerk Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variables 43,44 and 45 - Means of Frequency Body Acceleration in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variables 46,47 and 48 - Standard Deviations of Frequency Body Acceleration in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variables 49,50 and 51 - Means of Frequency Body Acceleration Jerk in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variables 52,53 and 54 - Standard Deviations of Frequency Body Acceleration Jerk in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variables 55,56 and 57 - Means of Frequency Body Gyroscope in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variables 58,59 and 60 - Standard Deviations of Frequency Body Gyroscope in X, Y and Z axes

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 61 - Mean of Frequency Body Acceleration

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 62 - Standard Deviation of Frequency Body Acceleration

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 63 - Mean of Frequency Body Acceleration Jerk Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 64 - Standard Deviation of Frequency Body Acceleration Jerk Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 65 - Mean of Frequency Body Gyroscope Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 66 - Standard Deviation of Frequency Body Gyroscope Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 67 - Mean of Frequency Body Gyroscope Jerk Magnitude

*Class = Numeric
*Unit of Measurement = Not specified

###Variable 68 - Standard Deviation of Frequency Body Gyroscope Jerk Magnitude

*Class = Numeric
*Unit of Measurement = Not specified