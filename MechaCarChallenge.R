library(dplyr)
MechaCar_table <- read.csv('MechaCar_mpg.csv')
simple.fit = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table)#create linear model
summary(simple.fit)