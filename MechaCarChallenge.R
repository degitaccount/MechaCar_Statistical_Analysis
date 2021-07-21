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

#DELIVERABLE 3:
#write an RScript using the t.test() function to determine if the PSI across all manufacturing
#lots is statistically different from the population mean of 1,500 pounds per square inch

#create sample dataset with 75 data points
sample_set <- coil_data %>% sample_n(75)

#compare the sample data to the full population
t.test (sample_set$PSI,mu=mean(coil_data$PSI))

#write three more RScripts in your MechaCarChallenge.RScript using the t.test() function 
#and its subset() argument to determine if the PSI for each manufacturing lot
#is statistically different from the population mean of 1,500 pounds per square inch

#manufacturing lot 1: 25 sample data points compared to population
lot_1_psi_sample <- coil_data %>% subset(Manufacturing_Lot == 'Lot1') %>% sample_n(25)
t.test (lot_1_psi_sample$PSI,mu=mean(coil_data$PSI))

#manufacturing lot 2: 25 sample data points compared to population
lot_2_psi_sample <- coil_data %>% subset(Manufacturing_Lot == 'Lot2') %>% sample_n(25)
t.test (lot_2_psi_sample$PSI,mu=mean(coil_data$PSI))

#manufacturing lot 3: 25 sample data points compared to population
lot_3_psi_sample <- coil_data %>% subset(Manufacturing_Lot == 'Lot3') %>% sample_n(25)
t.test (lot_3_psi_sample$PSI,mu=mean(coil_data$PSI))
