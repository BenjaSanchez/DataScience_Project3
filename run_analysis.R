################################################################################
## run_analysis.R
## 
##
## Benjamín J. Sánchez. Last Update: 2015-04-24
################################################################################

#Load dplyr package:
library(dplyr)

#Read all relevant data:
train_data    <- read.table('UCI HAR Dataset/train/X_train.txt')
train_act_num <- read.table('UCI HAR Dataset/train/y_train.txt')
train_sub_num <- read.table('UCI HAR Dataset/train/subject_train.txt')
test_data     <- read.table('UCI HAR Dataset/test/X_test.txt')
test_act_num  <- read.table('UCI HAR Dataset/test/y_test.txt')
test_sub_num  <- read.table('UCI HAR Dataset/test/subject_test.txt')
act_codes     <- read.table('UCI HAR Dataset/activity_labels.txt')
var_names     <- read.table('UCI HAR Dataset/features.txt')

#Merge the training and test data sets to create one data set:
all_data <- rbind(train_data,test_data)
act_num  <- rbind(train_act_num,test_act_num)
sub_num  <- rbind(train_sub_num,test_sub_num)

#Extract only the mean and standard deviation measurements:
ind_mean  <- grep('-mean()',var_names[,2],fixed=TRUE)
ind_std   <- grep('-std()',var_names[,2],fixed=TRUE)
index     <- sort(c(ind_mean,ind_std))
all_data  <- all_data[,index]
var_names <- as.character(var_names[index,2])

#Create vector with descriptive activity names:
act_names <- factor(act_num[,1], labels = act_codes[,2])

#Add 2 additional columns to the dataset: Activity and Subject (as factors):
all_data <- cbind(act_names,factor(sub_num[,1]),all_data)

#Create descriptive variable names:
var_names <- c('Activity','Subject',var_names)
var_names <- gsub('()','',var_names,fixed=TRUE)
var_names <- gsub('-','_',var_names,fixed=TRUE)

#Assign names to all variables from the dataset:
colnames(all_data) <- var_names

#Sort by activity:
all_data <- arrange(all_data,Activity)

#Create a tidy data set with the average of each variable for each activity
#and each subject:
group_data <- group_by(all_data,Activity,Subject)
tidy_data  <- summarise_each(group_data,funs(mean))

#Finally, save results:
write.table(tidy_data,'tidy_data.txt',sep = '\t', row.name = FALSE)

################################################################################