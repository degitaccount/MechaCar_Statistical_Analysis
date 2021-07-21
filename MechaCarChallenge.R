#DELIVERABLE 1:
#use the library function to load the dplyr package
library(dplyr)

#import and read in the MechaCar_mpg.csv file as a dataframe
vehicle_data <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function. 
#pass in all six variables and add the dataframe created above
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=vehicle_data)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=vehicle_data))

#DELIVERABLE 2:
#import and read in the Suspension_Coil.csv file as a table
coil_data <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the 
#mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() 
#functions to group each manufacturing lot by the mean, median, variance, and standard deviation
#of the suspension coil’s PSI column
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')



