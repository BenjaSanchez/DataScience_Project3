README
========================

## About

This repo includes all files developed for completing the programming assignment of the on-line course "Getting & Cleaning Data" in Coursera:

* _tidy_data.txt_: Contains the requested tidy data set. NOTE: For loading the data set in R please use _data <- read.table('tidy_data.txt', header = TRUE)_
* _UCI HAR Dataset_: Folder with all original data.
* _run_analysis.R_: Performs all necessary steps for obtaining the tidy data set from the original data:
    * Loads all original data from the _UCI HAR Dataset_ folder.
    * Merges both the training and test sets to create one data set.
    * Filters only the mean and standard deviation values from all the data.
    * Creates a vector with descriptive activity names.
    * Adds additional columns to the dataset to include the activity name and the subject number (as factors).
    * Creates descriptive variable names (based on the original variable names in _UCI HAR Dataset/features.txt_) and assigns them to the dataset.
    * Sorts the dataset by activity name and then by subject.
    * Creates a tidy data set with the average of each variable for each activity and each subject.
    * Finally, saves the results as _tidy_data.txt_.
* _CodeBook.md_: Contains a description of the data, all variables and the transformations that were performed to clean up the data.
* _write_CodeBook.R_: Reads the variable names from _tiny_data.txt_ and creates and automatic description of each variable, for easily generating the "Description of each variable" section in _CodeBook.md_.

Benjam�n S�nchez. Last edited: 2015-04-26

========================

## Original Instruccions

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

========================