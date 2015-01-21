# Load data.table & reshape2 packages in R.
library(data.table)
library(reshape2)

# Read txt files and store them for future use.
Features <- read.table("./UCI HAR Dataset/features.txt")[,2]
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Apply appropriate variable names to xtest from features.txt file.
names(xtest) = Features
# Apply appropriate variable names to ytest ("Activity", "ID").
ytest[,2] = ActivityLabels[ytest[,1]]
names(ytest) = c("ID", "Activity")
# Apply appropriate variable name to subjectTest.
names(subjectTest) = "Subject"
# Apply appropriate variable names to xtrain from features.txt file.
names(xtrain) = Features
# Apply appropriate variable names to ytrain ("Activity", "ID").
ytrain[,2] = ActivityLabels[ytrain[,1]]
names(ytrain) = c("ID", "Activity")
# Apply appropriate variable name to subjectTrain.
names(subjectTrain) = "Subject"

# Extract only the information on standard deviation and mean.
MeanStdv <- grepl("mean|std", Features)
xtest = xtest[,MeanStdv]
xtrain = xtrain[,MeanStdv]

# Merge all the test data (subjectTest, ytest, xtest).
testData <- cbind(as.data.table(subjectTest), ytest, xtest)
# Merge all the train data (subjectTrain, ytrain, xtrain).
trainData <- cbind(as.data.table(subjectTrain), ytrain, xtrain)
# Merge all data (testData, trainData).
dt = rbind(testData, trainData)

# Clean up merged data and create a tidy dataset as text file. 
id <- c("Subject", "ID", "Activity")
variables <- setdiff(colnames(dt), id)
dt2 <- melt(dt, id = id, measure.vars = variables)
TidyData <- dcast(dt2, Subject + Activity ~ variable, mean)
write.table(TidyData, file = "./TidyData.txt")
