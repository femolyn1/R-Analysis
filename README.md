# R-Analysis
PART 1

The statistics below was obtained from the statistical analysis:

                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852  

From the information above, the low Pr(>|t|) value of the vehicle length and ground clearance shows that they are unlikely to provide a random amount of variance to the mpg values in the data set. Both variables have a significant impact on the dependent variable with significance level below 0.001 or 99.9%. 
In addition, the fact that the intercept is also statistically significant  confirms that there are other variables in the data that contribute to the variation in the dependent variable.

In regard to the slope of our linear model , it is not considered to be zero due to the significant relationship between  the dependent variable  mpg and the independent variables,vehicle length and ground clearance. 


From our linear regression model, the r-squared value is 0.7149, which means that roughly 70% of all mpg predictions will be correct when using this linear model.


PART 2
The summary table shows the statistics  table for the suspension coil's PSI for the various lots. As shown in the table, the variance of the suspension coils at lot 3 was 220 PSI which exceeds the 100 PSI design specification. This shows that some level of inconsistency exist accross the manufacturing lots. 

PART 3
A one sample t-test was used to determine if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch and a p-value  of 0.3911 was obtained.
Assuming our significance level was the common 0.05 percent, the obtained p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and this suggests that the two means are statistically similar.


PART 4: SHORT STATISTICAL STUDY

MechaCar's long time competitor is MetroCar. Consumers are interested in the difference in fuel efficiency based on weight and horse power(hp)
We will use a two way ANOVA test to determine this and use the hypothesis below:

H0 : The means of all groups are equal, or µ1 = µ2 = … = µn.

Ha : At least one of the means is different from all other groups.

The following assuptions will be made:

The dependent variable is numerical and continuous, and the independent variables are categorical.
The dependent variable is considered to be normally distributed.
The variance among each group should be very similar.

Required Data: 
We will need to obtain the weights and horse power information for the various models of MechaCar and MetroCar vehicles for the past 5 years. Using the aov() function, our dependent variable will be fuel_efficiency while the independent variables will be weight and hp. 

Analysis:

If the P-value is lower than a significance level of 0.05, we have enough reason to reject the null hypothesis and accept that there is a significant difference in the fuel vehicle fuel efficiency for both manufacturer. However, if the P-value is higher than the desired significance level(0.05), then we will accept the null hypothesis and reject the alternate hypothesis. 



