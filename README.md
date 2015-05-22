# Human Activity Recognition Using Smartphones

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was originally made available: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data used here was downloaded from Coursera's web site, and transformed as specified in the project description. The script 'analysis.R' in this github repository does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

More information on each of these steps is given as comments in the script itself. A couple more general points here:

* The data files were not stored in the same directory as the script, but in a separate subdirectory 'data'
* The original name of the directory, as found in the zip file, was changed to 'harus' (Human Activity Recognition Using Smartphones), which is both shorter and more readable than the orginal directory name. Most importantly, it doesn't contain spaces (which I don't like in directory or file names).

## Citation
Original data are from:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 
 
