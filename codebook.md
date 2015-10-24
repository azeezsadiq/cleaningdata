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

##Collection of the raw data

The data was collected by the accelerometer and gyroscope of the Samsung SII. 

##Raw Data Variables

The variables included time and frequency domain signals for various parameters. The signals are generated for each of the x,y and z axes. This data was then processed according to determine parameters such as the mean and standard deviation.

##Notes on original data

The data provided as raw data is technically already processed somewhat as it tabulates variables such as the mean and standard deviations of the file. This indicates some initial processing.

#Creating the tidy datafile

## Steps to generating the tidy data file

* Download the file
* Run the **run_analysis.R** file making sure that the file is in your working directory. The training and test data sets should also in the sub folders as in the \.\zip file.

## Cleaning of the Data

The raw data is cleaned into a wide format tidy data set. Only the necessary variables of the mean and standard deviations are kept. The means are then calculated for each of these. Further details are provided in the **readme.md** file.

#Description of the variables in the result.txt file

The data set generated will be of dimensions 180 x 68. The first two columns refer to the subject number performing the activity and the activity being performed. The other 66 columns provide information on the processed variables.





