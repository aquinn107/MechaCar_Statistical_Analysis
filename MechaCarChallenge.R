library(dplyr)
# Deliverable 1
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#create linear regression with MechaCar data set.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) 
#create summary statistics of Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) 

#Deliverable 2
Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# Write an RScript that creates a total_summary dataframe
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
# Write an RScript that creates a lot_summary dataframe
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3
#write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil$PSI,mu=mean(1500)) 
t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot1',select = PSI))
t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot2',select = PSI))
t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot3',select = PSI))
#Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
Lot1_t_test <- t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot1',select = PSI))
Lot2_t_test <- t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot2',select = PSI))
Lot3_t_test <- t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot3',select = PSI))
