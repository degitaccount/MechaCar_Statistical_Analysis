#use the library function to load the dplyr package
library(dplyr)

#import and read in the MechaCar_mpg.csv file as a dataframe
vehicle_data <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function. 
#pass in all six variables and add the dataframe created above
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=vehicle_data)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=vehicle_data))
