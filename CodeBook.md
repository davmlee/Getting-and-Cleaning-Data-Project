## CodeBook for Getting and Cleaning Data Project

The original data sets are:
        1. X_test.txt, y_test.txt, subject_test.txt
        2. X_train, y_train, subject_train
        3. features.txt, activity_labels.txt
The data sets were combined by test and train and then combined together to create a new full data set.
The full data set was then used to create a tidy data set consisting of the mean of each variable for the
subject and activity.

The tidy data set (tidy_dataset.txt) consists of 180 observations of 88 variables.
The vairables are as follows:


        VARIABLE NAME                                 VARIABLE TYPE               VALUE                                  
    [1] "Subject"                                       Integer                   1 - 30
    
    [2] "Activity"                                      Factor                    Walking
                                                                                  Walking_Upstairs
                                                                                  Waling_Downstairs
                                                                                  Sitting
                                                                                  Standing
                                                                                  Laying
                                                                                  
    [3] "timebodyaccelerometermeanX"                    Numeric                 Value of variables                     
    [4] "timebodyaccelerometermeanY"                    Numeric                 3 - 88 is the mean
    [5] "timebodyaccelerometermeanZ"                    Numeric                 of the variable from 
    [6] "timeGravityaccelerometermeanX"                 Numeric                 the original data set
    [7] "timeGravityaccelerometermeanY"                 Numeric 
    [8] "timeGravityaccelerometermeanZ"                 Numeric 
    [9] "timebodyaccelerometerJerkmeanX"                Numeric 
    [10] "timebodyaccelerometerJerkmeanY"               Numeric  
    [11] "timebodyaccelerometerJerkmeanZ"               Numeric  
    [12] "timebodygyroscopemeanX"                       Numeric  
    [13] "timebodygyroscopemeanY"                       Numeric  
    [14] "timebodygyroscopemeanZ"                       Numeric  
    [15] "timebodygyroscopeJerkmeanX"                   Numeric  
    [16] "timebodygyroscopeJerkmeanY"                   Numeric  
    [17] "timebodygyroscopeJerkmeanZ"                   Numeric  
    [18] "timebodyaccelerometermagnitudemean"           Numeric  
    [19] "timeGravityaccelerometermagnitudemean"        Numeric  
    [20] "timebodyaccelerometerJerkmagnitudemean"       Numeric  
    [21] "timebodygyroscopemagnitudemean"               Numeric  
    [22] "timebodygyroscopeJerkmagnitudemean"           Numeric  
    [23] "frequencybodyaccelerometermeanX"              Numeric  
    [24] "frequencybodyaccelerometermeanY"              Numeric  
    [25] "frequencybodyaccelerometermeanZ"              Numeric  
    [26] "frequencybodyaccelerometermeanFreqX"          Numeric  
    [27] "frequencybodyaccelerometermeanFreqY"          Numeric  
    [28] "frequencybodyaccelerometermeanFreqZ"          Numeric  
    [29] "frequencybodyaccelerometerJerkmeanX"          Numeric  
    [30] "frequencybodyaccelerometerJerkmeanY"          Numeric  
    [31] "frequencybodyaccelerometerJerkmeanZ"                Numeric  
    [32] "frequencybodyaccelerometerJerkmeanFreqX"            Numeric  
    [33] "frequencybodyaccelerometerJerkmeanFreqY"            Numeric  
    [34] "frequencybodyaccelerometerJerkmeanFreqZ"            Numeric  
    [35] "frequencybodygyroscopemeanX"                        Numeric  
    [36] "frequencybodygyroscopemeanY"                        Numeric  
    [37] "frequencybodygyroscopemeanZ"                        Numeric  
    [38] "frequencybodygyroscopemeanFreqX"                    Numeric  
    [39] "frequencybodygyroscopemeanFreqY"                    Numeric  
    [40] "frequencybodygyroscopemeanFreqZ"                    Numeric  
    [41] "frequencybodyaccelerometermagnitudemean"            Numeric  
    [42] "frequencybodyaccelerometermagnitudemeanFreq"        Numeric  
    [43] "frequencybodyaccelerometerJerkmagnitudemean"        Numeric  
    [44] "frequencybodyaccelerometerJerkmagnitudemeanFreq"    Numeric
    [45] "frequencybodygyroscopemagnitudemean"                Numeric
    [46] "frequencybodygyroscopemagnitudemeanFreq"            Numeric
    [47] "frequencybodygyroscopeJerkmagnitudemean"            Numeric
    [48] "frequencybodygyroscopeJerkmagnitudemeanFreq"        Numeric
    [49] "angletbodyaccelerometerMeangravity"                 Numeric
    [50] "angletbodyaccelerometerJerkMeangravityMean"         Numeric  
    [51] "angletbodygyroscopeMeangravityMean"                 Numeric
    [52] "angletbodygyroscopeJerkMeangravityMean"             Numeric
    [53] "angleXgravityMean"                                  Numeric
    [54] "angleYgravityMean"                                  Numeric
    [55] "angleZgravityMean"                                  Numeric
    [56] "timebodyaccelerometerstdX"                          Numeric
    [57] "timebodyaccelerometerstdY"                          Numeric
    [58] "timebodyaccelerometerstdZ"                          Numeric
    [59] "timeGravityaccelerometerstdX"                       Numeric
    [60] "timeGravityaccelerometerstdY"                       Numeric
    [61] "timeGravityaccelerometerstdZ"                       Numeric
    [62] "timebodyaccelerometerJerkstdX"                      Numeric
    [63] "timebodyaccelerometerJerkstdY"                      Numeric
    [64] "timebodyaccelerometerJerkstdZ"                      Numeric
    [65] "timebodygyroscopestdX"                              Numeric
    [66] "timebodygyroscopestdY"                              Numeric
    [67] "timebodygyroscopestdZ"                              Numeric
    [68] "timebodygyroscopeJerkstdX"                          Numeric
    [69] "timebodygyroscopeJerkstdY"                          Numeric
    [70] "timebodygyroscopeJerkstdZ"                          Numeric
    [71] "timebodyaccelerometermagnitudestd"                  Numeric
    [72] "timeGravityaccelerometermagnitudestd"               Numeric
    [73] "timebodyaccelerometerJerkmagnitudestd"              Numeric
    [74] "timebodygyroscopemagnitudestd"                      Numeric
    [75] "timebodygyroscopeJerkmagnitudestd"                  Numeric 
    [76] "frequencybodyaccelerometerstdX"                     Numeric
    [77] "frequencybodyaccelerometerstdY"                     Numeric
    [78] "frequencybodyaccelerometerstdZ"                     Numeric
    [79] "frequencybodyaccelerometerJerkstdX"                 Numeric
    [80] "frequencybodyaccelerometerJerkstdY"                 Numeric
    [81] "frequencybodyaccelerometerJerkstdZ"                 Numeric
    [82] "frequencybodygyroscopestdX"                         Numeric
    [83] "frequencybodygyroscopestdY"                         Numeric
    [84] "frequencybodygyroscopestdZ"                         Numeric
    [85] "frequencybodyaccelerometermagnitudestd"             Numeric
    [86] "frequencybodyaccelerometerJerkmagnitudestd"         Numeric
    [87] "frequencybodygyroscopemagnitudestd"                 Numeric
    [88] "frequencybodygyroscopeJerkmagnitudestd"             Numeric
