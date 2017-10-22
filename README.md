## Getting and Cleaning Data Course Project README file

The run_analysis.R script reads in data taken from wearable smartphone devices for 30 individuals
who performed 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

### Files read in:

- 'features.txt': List of all features
- 'activity_labels.txt': Links the class labels with their activity name
- 'train/X_train.txt': Training set
- 'train/y_train.txt': Training labels
- 'test/X_test.txt': Test set
- 'test/y_test.txt': Test labels
- 'train/subject_train.txt': Training subject IDs
- 'test/subject_test.txt': Test subject IDs

### Cleaning and merging the data and information:

The labels, IDs, and activities are cleaned up a bit and combined with the data table 
to facilitate readability.

Columns for variables containing means and standard deviations are extracted and the training and test
datasets are merged to create one dataset.

The merged dataset is divided into groups, in a list, with each group containing information on one 
individual and one activity. Each variable in each group is averaged and the result is presented in a
table that lists the variables in the columns and subject ID and in the rows. The first column is the
activity.

### Write output file:

The result is written to a text file
"smartphone_activity_means_and_std_averages.txt"
