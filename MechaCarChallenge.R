library(dplyr)
MechaCar_table <- read.csv('MechaCar_mpg.csv')
simple.fit = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table)#create linear model
summary(simple.fit)

Suspension_Coil_table <- read.csv('Suspension_Coil.csv')
total_summary <- Suspension_Coil_table  %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance = var(PSI), SD = sd(PSI),.groups = 'keep') #create summary table
lot_summary <- Suspension_Coil_table  %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI),Variance = var(PSI), SD = sd(PSI),.groups = 'keep')

t.test(Suspension_Coil_table$PSI,mu=mean(Suspension_Coil_table$PSI))

t.test(subset(Suspension_Coil_table$PSI,Suspension_Coil_table$Manufacturing_Lot =="Lot1"),mu=mean(Suspension_Coil_table$PSI))

t.test(subset(Suspension_Coil_table$PSI,Suspension_Coil_table$Manufacturing_Lot =="Lot2"),mu=mean(Suspension_Coil_table$PSI))

t.test(subset(Suspension_Coil_table$PSI,Suspension_Coil_table$Manufacturing_Lot =="Lot3"),mu=mean(Suspension_Coil_table$PSI))