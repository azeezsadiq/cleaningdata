# Readme Guide
This readme provides a guide on how the **run_analysis.R** works to convert the data into a clean and tidy dataset as per the requirements of the project.

### Reading in the Raw Data

The data is read into the RStudio by the following code. Please note that the working directory at this stage should be the folder created after unzipping the zip file that contained the raw data. The test and train datasets will thus be in the subfolders to the working directory folder. The data is stored in the variables *X_test*, *Y_test*, *subject_test*, *X_train*, *Y_train*, *subject_test* and *features*.

```javascript
X_test<-read.table("test/X_test.txt")
Y_test<-read.table("test/Y_test.txt")
subject_test<-read.table("test/subject_test.txt")

X_train<-read.table("train/X_train.txt")
Y_train<-read.table("train/Y_train.txt")
subject_train<-read.table("train/subject_train.txt")

features<-read.table("features.txt")
```

### Merging the data into one dataset *data_merge*

This is achieved by performing two column binds followed by a row bind. This combines the test set, training set and subject set.

```javascript
data<-cbind(subject_test,Y_test,X_test)
data1<-cbind(subject_train,Y_train,X_train)
data_merge<-rbind(data1,data)
```
### Renaming the variables as per the features set

```javascript
colnames(data_merge)[3:dim(data_merge)[2]]<-as.character(features[,2])
```

### Cleaning of data to retain only variables with mean and standard deviation

The mean and standard deviation variables were retained by using the following code. Grepl() was used to find the positions of variables with mean and standard deviations. These were then appended with position of first two columns as these are the columns which had to be retained. The dataset was kept in the wide format.

Note: The variables relating to mean frequency were not retained as they do not relate to mean as per the question.

```javascript
mean_pos<-grepl("[Mm]ean\\()",colnames(data_merge))
std_pos<-grepl("[Ss]td\\()",colnames(data_merge))
meanstd_pos<-mean_pos | std_pos
meanstd_pos[1:2]<-c(TRUE,TRUE)

data_merge<-data_merge[,meanstd_pos]
```

### Renaming first two columns to subject number and activity

```javascript
colnames(data_merge)[1]<-"subjectnumber"
colnames(data_merge)[2]<-"activity"
```

### Cleaning first two columns

The subject number is converted to factor class. The activity column is also converted to factor after first replacing activity numbers with their actual descriptions.

```javascript
data_merge[,1]<-as.factor(data_merge[,1])
data_merge[,2]<-as.character(data_merge[,2])
data_merge[,2]<-sub("1","Walking",data_merge[,2])
data_merge[,2]<-sub("2","Walking Upstairs",data_merge[,2])
data_merge[,2]<-sub("3","Walking Downstairs",data_merge[,2])
data_merge[,2]<-sub("4","Sitting",data_merge[,2])
data_merge[,2]<-sub("5","Standing",data_merge[,2])
data_merge[,2]<-sub("6","Laying",data_merge[,2])

data_merge[,2]<-factor(data_merge[,2],levels=c("Walking","Walking Upstairs","Walking Downstairs","Sitting","Standing","Laying"))
```
### Renaming variable names to more meaningful ones

The variables are renamed to more intuitive ones. Also, as per lecture guidelines, they are converted to lowercase.

```javascript
colnames(data_merge)<-sub("^t","time",colnames(data_merge))
colnames(data_merge)<-sub("^f","frequency",colnames(data_merge))
colnames(data_merge)<-sub("[Aa]cc","acceleration",colnames(data_merge))
colnames(data_merge)<-sub("[Gg]yro","gyroscope",colnames(data_merge))
colnames(data_merge)<-sub("[Mm]ag","magnitude",colnames(data_merge))
colnames(data_merge)<-sub("mean\\()","mean",colnames(data_merge))
colnames(data_merge)<-sub("std\\()","standarddeviation",colnames(data_merge))
colnames(data_merge)<-tolower(colnames(data_merge))
```

### Rearraning data and calculating means of each variable according to subject number and activity

The data in *data_merge* is ordered according to subject number and activity. Then this dataset is melted and recast according with the averages calculated. The data is stored in the dataframe *result*.

```javascript
data_merge<-data_merge[order(data_merge$subjectnumber,data_merge$activity),]

library(reshape2)

melted<- melt(data_merge, id=c("subjectnumber", "activity"), measure.vars = colnames(data_merge)[3:68])
result<-dcast(melted,subjectnumber+activity~variable,fun.aggregate=mean)
```
### Writing \.txt file

The dataset in *result* is written to a \.txt file called result.

```javascript
write.table(result,file="result.txt",row.names = FALSE)
```
Note: Remember to set your Header argument to TRUE if using read.table to read my \.txt file. Otherwise, the column names are read in as another row.