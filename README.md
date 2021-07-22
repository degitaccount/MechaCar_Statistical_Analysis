# MechaCar_Statistical_Analysis

## Project Overview
This project uses R to perform statistical analysis on automobile production data to draw insights for the production team.

## Linear Regression to Predict MPG

![Image1_mpg_regression_analysis.PNG]( https://github.com/degitaccount/MechaCar_Statistical_Analysis/blob/main/Images/Image1_mpg_regression_analysis.PNG)
In the linear regression summary, the Pr(>|t|) represents the p-value of each t-test.  The asterisks highlight how likely the relationship between the y variable and the coefficients is due to chance - lower values indicate that the relationship is unlikely due to chance.  The results of the regression model suggest that the intercept, vehicle length and ground clearance provide a non-random amount of variance to the mpg values

{INSERT COMMENTS ABOUT THE SLOPE}

An r-squared value of approximately 0.71 suggests changes in the vehicle length, vehicle weight, spoiler angel and ground clearance explain 71% of mpg variations.  We can conclude that the liner regression model is effective at predicting mpg for prototypes.

## Summary Statistics on Suspension Coils

![Image2_total_coil_summary.PNG]( https://github.com/degitaccount/MechaCar_Statistical_Analysis/blob/main/Images/Image2_total_coil_summary.PNG)
![Image3_lot_summary.PNG]( https://github.com/degitaccount/MechaCar_Statistical_Analysis/blob/main/Images/Image3_lot_summary.PNG)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  Analyzing the data in aggregate would suggest that design specifics are being satisfied with a variance of 62.29.  A review of the individual lots shows variances of .98 for Lot 1, 7.47 for Lot 2 and 170.27 for Lot 3 revealing that Lot 3 does not meet the design specifications.

## T-Tests on Suspension Coils 
***All Lots***
![Image4_psi_t-test.PNG]( https://github.com/degitaccount/MechaCar_Statistical_Analysis/blob/main/Images/Image4_psi_t-test.PNG)
The p-value of 0.89 is greater than the generally accepted significance level of .05.  We therefore do not have sufficient evidence to reject the null hypothesis and can state that the PSI across all manufacturing lots is statistically similar to the population mean of 1498.78

***Lot 1***
![Image5_lot1_psi_sample_t-test.PNG]( https://github.com/degitaccount/MechaCar_Statistical_Analysis/blob/main/Images/Image5_lot1_psi_sample_t-test.PNG)

The p-value is less than the generally accepted significance level of .05.  We therefore can reject the null hypothesis and can state that the PSI across Lot 1 is statistically different from the population mean of 1498.78


***Lot 2***
![Image6_lot2_psi_sample_t-test.PNG]( https://github.com/degitaccount/MechaCar_Statistical_Analysis/blob/main/Images/Image6_lot2_psi_sample_t-test.PNG)

The p-value of 0.05 is in line with the generally accepted significance level of .05.  We therefore do not have strong enough evidence to reject the null hypothesis and can state that the PSI across Lot 2 is statistically similar to the population mean of 1498.78

***Lot 3***
![Image7_lot3_psi_sample_t-test.PNG]( https://github.com/degitaccount/MechaCar_Statistical_Analysis/blob/main/Images/Image7_lot3_psi_sample_t-test.PNG)

The p-value of 0.29 is greater than the generally accepted significance level of .05.  We therefore do not have sufficient evidence to reject the null hypothesis and can state that the PSI across Lot 3 is statistically similar to the population mean of 1498.78


## Study Design: MechaCar vs Competition

To compare MechaCar’s performance against the competition, I would perform statistical analysis against the following metrics:
* Vehicle Price
* Ownership Costs
* Horsepower
* Fuel efficiency
* Acceleration time from 0-60 mph

My null hypothesis would be that these metrics are statistically similar to the competition.  After gathering the competitor data, I would use the ANOVA test to measure whether there is a statistical difference in the distribution of the means across the multiple data samples.

If the null hypothesis is proven, then the company may have to look for a way to differentiate the MechaCar from the competition.  I would integrate information about consumer habits and expectations (which could lead to additional analysis).  This additional information could generate new ideas for the design and/or features of the MechaCar as well as optimizing the consumer buying and ownership experience.
