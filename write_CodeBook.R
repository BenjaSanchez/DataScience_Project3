################################################################################
## write_CodeBook.R
## 
## Benjamín J. Sánchez. Last Update: 2015-04-26
################################################################################

data        <- read.table('tidy_data.txt', header = TRUE)
var_names   <- names(data)
var_meaning <- names(data)

#Create the description of each variable:
for(i in 1:length(var_names)) {
  new_text <- ''
  if(var_names[i] == 'Activity') {
    new_text <- paste('Activity performed by the subject (WALKING, WALKING_UPSTAIRS,',
                      'WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING)')
  } else if(var_names[i] == 'Subject') {
    new_text <- 'Number corresponding to the subject (between 1 and 30)'
  } else {
    #Mean or std:
    if(length(grep('mean',var_names[i])) == 1){
      new_text <- 'Mean value of'
    } else {
        new_text <- 'Standard deviation of'
    }
    #Jerk or normal:
    if(length(grep('Jerk',var_names[i])) == 1) {
      new_text <- paste(new_text,'Jerk')
    }
    #Type of signal:
    if(length(grep('tBody',var_names[i])) == 1) {
      new_text <- paste(new_text,'time domain body')
    } else if(length(grep('tGravity',var_names[i])) == 1) {
      new_text <- paste(new_text,'time domain gravity')
    } else if(length(grep('fBody',var_names[i])) == 1) {
      new_text <- paste(new_text,'frequency domain body')
    }
    #Measurement source:
    if(length(grep('Acc',var_names[i])) == 1) {
      new_text <- paste(new_text,'signal from accelerometer')
    } else if(length(grep('Gyro',var_names[i])) == 1) {
      new_text <- paste(new_text,'signal from gyroscope')
    }
    #Dimension:
    if(length(grep('_X',var_names[i])) == 1) {
      new_text <- paste(new_text,'- direction X')
    } else if(length(grep('_Y',var_names[i])) == 1) {
      new_text <- paste(new_text,'- direction Y')
    } else if(length(grep('_Z',var_names[i])) == 1) {
      new_text <- paste(new_text,'- direction Z')
    } else if(length(grep('Mag',var_names[i])) == 1) {
      new_text <- paste(new_text,'- magnitude')
    }
    new_text <- paste(new_text,'(AVERAGE)')
  }
  var_meaning[i] <- new_text
  var_names[i]   <- paste('* _',var_names[i],'_:',sep = '')
}

#Save results:
write.table(cbind(var_names,var_meaning),'output.txt',sep = ' ',
            row.name = FALSE, quote=FALSE)

################################################################################