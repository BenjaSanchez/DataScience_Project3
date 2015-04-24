################################################################################
## run_analysis.R
## 
##
## Benjamín J. Sánchez. Last Update: 2015-04-24
################################################################################

#Read all relevant data:
train_data    <- read.table('UCI HAR Dataset/train/X_train.txt')
train_act_num <- read.table('UCI HAR Dataset/train/y_train.txt')
train_sub_num <- read.table('UCI HAR Dataset/train/subject_train.txt')
test_data     <- read.table('UCI HAR Dataset/test/X_test.txt')
test_act_num  <- read.table('UCI HAR Dataset/test/y_test.txt')
test_sub_num  <- read.table('UCI HAR Dataset/test/subject_test.txt')
act_names     <- read.table('UCI HAR Dataset/activity_labels.txt')
var_names     <- read.table('UCI HAR Dataset/features.txt')

