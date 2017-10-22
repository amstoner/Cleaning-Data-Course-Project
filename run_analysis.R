## Read in necessary files (set your directory to the UCI HAR Dataset directory first)
features <- read.table("features.txt",stringsAsFactors = F)[,2]     # only read in the second column, the first is just row names
activity_labels <- read.table("activity_labels.txt")     # activity labels
x_test <- read.table('test/X_test.txt')                  # test dataset
y_test <- read.table('test/y_test.txt')                  # test activity codes
x_train <- read.table('train/X_train.txt')               # training dataset
y_train <- read.table('train/y_train.txt')               # training activity codes
subject_test <- read.table('test/subject_test.txt')      # subject ID
subject_train <- read.table('train/subject_train.txt')   # subject ID

## Clean up variable names - get rid of parentheses and make it all lower case.
feat1 <- gsub("\\(","",features)
features <- tolower(gsub("\\)","",feat1))

## Add labels, activity, and subject ID to the data
activity <- activity_labels[c(y_train[,1]),2]
x_train <- cbind(subject_train,activity,x_train)
activity <- activity_labels[c(y_test[,1]),2]
x_test <- cbind(subject_test,activity,x_test)
colnames(x_train) <- c("subjectid","activity",features)
colnames(x_test) <- c("subjectid","activity",features)

## Extract relevant columns containing "mean" and "std"
cols <- grep("mean|std",names(x_train))
x_train <- x_train[,c(1,2,cols)]
x_test <- x_test[,c(1,2,cols)]

## Merge x_train and x_test
x <- merge(x_train,x_test,by=names(x_train),all=T)

## Calculate mean for all subjects and activities
s <- split(x,list(x$subjectid,x$activity))     # sort by subject id and activity
means <- t(sapply(s,function(x) colMeans(x[,3:ncol(x)],na.rm=T))) # calculate column means and put in neat matrix. Transpose so variables are columns.

## Split id and activity into two columns and remove row names
id_activity <- matrix(unlist(strsplit(rownames(means),"\\.")),ncol=2,byrow=T)
colnames(id_activity) <- c("subjectid","activity")
result <- data.frame(cbind(id_activity,means))
rownames(result) <- NULL

## Write the data frame to a file
write.table(result,"smartphone_activity_means_and_std_averages.txt",row.names=F)