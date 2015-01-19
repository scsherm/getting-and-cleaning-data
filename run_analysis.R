library(data.table)
library(reshape2)
Features <- read.table("./UCI HAR Dataset/features.txt")[,2]
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(xtest) = Features
ytest[,2] = ActivityLabels[ytest[,1]]
names(ytest) = c("ID", "Activity")
names(subjectTest) = "Subject"
names(xtrain) = Features
ytrain[,2] = ActivityLabels[ytrain[,1]]
names(ytrain) = c("ID", "Activity")
names(subjectTrain) = "Subject"
MeanStdv <- grepl("mean|std", Features)
xtest = xtest[,MeanStdv]
xtrain = xtrain[,MeanStdv]
testData <- cbind(as.data.table(subjectTest), ytest, xtest)
trainData <- cbind(as.data.table(subjectTrain), ytrain, xtrain)
dt = rbind(testData, trainData)
dt2 = melt(dt, id = c("Subject", "ID", "Activity"), measure.vars = setdiff(colnames(dt), c("Subject", "ID", "Activity")))
TidyData <- dcast(dt2, Subject + Activity ~ variable, mean)
write.table(TidyData, file = "./TidyData.txt")
