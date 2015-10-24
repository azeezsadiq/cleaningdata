#Reading in the Raw Data

X_test<-read.table("test/X_test.txt")
Y_test<-read.table("test/Y_test.txt")
subject_test<-read.table("test/subject_test.txt")

X_train<-read.table("train/X_train.txt")
Y_train<-read.table("train/Y_train.txt")
subject_train<-read.table("train/subject_train.txt")

features<-read.table("features.txt")

#Merging the data into one dataset data_merge

data<-cbind(subject_test,Y_test,X_test)

data1<-cbind(subject_train,Y_train,X_train)

data_merge<-rbind(data1,data)

#Renaming the variables as per the features set
colnames(data_merge)[3:dim(data_merge)[2]]<-as.character(features[,2])

#Cleaning of data to retain only variables with mean and standard deviation
mean_pos<-grepl("[Mm]ean\\()",colnames(data_merge))
std_pos<-grepl("[Ss]td\\()",colnames(data_merge))
meanstd_pos<-mean_pos | std_pos

meanstd_pos[1:2]<-c(TRUE,TRUE)

data_merge<-data_merge[,meanstd_pos]

#Renaming first two columns to subject number and activity
colnames(data_merge)[1]<-"subjectnumber"
colnames(data_merge)[2]<-"activity"

#Cleaning first two columns
data_merge[,1]<-as.factor(data_merge[,1])
data_merge[,2]<-as.character(data_merge[,2])
data_merge[,2]<-sub("1","Walking",data_merge[,2])
data_merge[,2]<-sub("2","Walking Upstairs",data_merge[,2])
data_merge[,2]<-sub("3","Walking Downstairs",data_merge[,2])
data_merge[,2]<-sub("4","Sitting",data_merge[,2])
data_merge[,2]<-sub("5","Standing",data_merge[,2])
data_merge[,2]<-sub("6","Laying",data_merge[,2])

data_merge[,2]<-factor(data_merge[,2],levels=c("Walking","Walking Upstairs",
                                               "Walking Downstairs","Sitting",
                                               "Standing","Laying"))

#Renaming variable names to more meaningful ones
colnames(data_merge)<-sub("^t","time",colnames(data_merge))
colnames(data_merge)<-sub("^f","frequency",colnames(data_merge))
colnames(data_merge)<-sub("[Aa]cc","acceleration",colnames(data_merge))
colnames(data_merge)<-sub("[Gg]yro","gyroscope",colnames(data_merge))
colnames(data_merge)<-sub("[Mm]ag","magnitude",colnames(data_merge))
colnames(data_merge)<-sub("mean\\()","mean",colnames(data_merge))
colnames(data_merge)<-sub("std\\()","standarddeviation",colnames(data_merge))

colnames(data_merge)<-tolower(colnames(data_merge))

#Rearraning data and calculating means of each variable according to subject number and activity
data_merge<-data_merge[order(data_merge$subjectnumber,data_merge$activity),]

library(reshape2)

melted<- melt(data_merge, id=c("subjectnumber", "activity"), measure.vars = colnames(data_merge)[3:68])
result<-dcast(melted,subjectnumber+activity~variable,fun.aggregate=mean)

#Writing .txt file
write.table(result,file="result.txt",row.names = FALSE)
