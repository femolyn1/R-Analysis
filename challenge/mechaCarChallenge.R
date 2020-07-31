# Read the MechaCar csv data and save into a variable
MechaCar_Table<- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Table) 

# To obtain statistical metrics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Table))


# Read the Suspension coil test csv data and save into a variable 
Suspension_Table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Summary statistics
Summary_Table <- Suspension_Table %>% group_by(Manufacturing_Lot) %>% summarize(Number_Tested=n(),Mean_PSI=mean(PSI),Median_PSI=median(PSI), Variance_PSI=var(PSI), PSI_Standard_deviation=sd(PSI))

# T-TEST to determine if if statistical difference exist between population and sample
##STEP 1: randomly sample 50 data point from the suspension table and save in a new variable
sample_Suspension_Table <- Suspension_Table %>% sample_n(50) 
##STEP 2: Compare sample versus popupation mean(suspension_Table)
t.test(log10(sample_Suspension_Table$PSI),mu=mean(log10(Suspension_Table$PSI))) 