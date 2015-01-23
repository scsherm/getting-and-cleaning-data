# CodeBook

## Dataset Information

The dataset was collected through participants who performed 6 different activities while wearing a Samsung Galaxy 2 around their waist.  There were 30 volunteers and their age bracket ranged from 19-48.  The activities included walking, walking upstairs, walking downstairs, sitting, standing, and laying.  The data is collected using the accelerometer and gyroscope in the Samusung Galaxy 2.  70% of the participants provided the train data and the other 30% provided the test data.

## The Files

The UCI HAR Dataset included the folowing files:

1. 'README.txt'

2. 'features_info.txt': Shows information about the variables used on the feature vector.

3. 'features.txt': List of all features.

4. 'activity_labels.txt': Links the class labels with their activity name.

5. 'train/X_train.txt': Training set.

6. 'train/y_train.txt': Training labels.

7. 'test/X_test.txt': Test set.

8. 'test/y_test.txt': Test labels.

9. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

10. 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

11. 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

12. 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

13. 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

14. 'test/Inertial Signals/total_acc_x_test.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_test.txt' and 'total_acc_z_test.txt' files for the Y and Z axis.

15. 'test/Inertial Signals/body_acc_x_test.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

16. 'test/Inertial Signals/body_gyro_x_test.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Cleaning Up Data and Variable Names

The features.txt files are used to name the variables of the xtest and xtrain data. The ytrain and ytest data variables are labeled Activity and ID. The Activity represents one of the six performed activities described earlier.  The ID is an associated number for each activty (1-6).  The variable name applied to the subject file is simply "Subject", as it represents the one of the thirty participants who performed the activities.  After these files are appropriately named, the data regarding the mean and standard deviation is extracted.  This data is then merged into one clean dataset and stored as a text file ('TidyData.txt').

