# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

1.Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
![image](https://user-images.githubusercontent.com/104603177/184518727-b7b2ffde-98f7-4943-b3e7-c3984b8dcd5c.png)



Coefficients:
mpg: 0 < .05, statistically significant, non-random amount of variance
vehicle length: 0 < .05, statistically significant, non-random amount of variance
vehicle weight: .08 > .05 not statistically significant, random amount of variance
spoiler angle: .31 > .05 not statistically significant, random amount of variance
ground clearance: 0 > .05 statistically significant, non-random amount of variance
AWD: .19>=.05 not statistically significant, random amount of variance

In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.

2.Is the slope of the linear model considered to be zero? Why or why not?

Converting from scientific notation, all of the slopes of the variables are shown to be non-zero even though some are close to zero:
Coefficients:
vehicle length: 6.267
vehicle weight: .001
spoiler angle: .069
ground clearance: 3.546
AWD: -3.411

The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.

3.Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

R-squared is .7149, which is a strong correlation for the dataset and shows the dataset is an effective dataset. However, r-squared is not the only consideration for effectiveness. There may be other variables not included in the dataset contributing to the variation in the mpg.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The variance for totoal manufacturing lot is 62 wich is less than 100, Lot 3 shows a varinca of 170>100 and does not meet the desgign specifications. lot 1 and lot 2 have sginificantly lover canriance,1 and 7 respectively

The menad of the lot numbers are close to the pipulation mean and sample mean
![image](https://user-images.githubusercontent.com/104603177/184518863-6e05491e-68bd-4f0a-8a9f-05d87f746cd1.png)

The mean is 1498.78 for this sample and population mean was considered to be 1500
![image](https://user-images.githubusercontent.com/104603177/184518865-0f374295-e0e3-4f3f-9911-3327a4066abe.png)

## T-Tests on Suspension Coils
![image](https://user-images.githubusercontent.com/104603177/184519274-42107e46-d4f6-4717-a6c2-397ebc5f4455.png)

![image](https://user-images.githubusercontent.com/104603177/184519248-173cd282-2eaf-4509-85db-dc9fbb3c723c.png)
Lot 1: p-value = 1, alpha = .05
1 > .05, which means Lot 1 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.
Lot 2: p-value = .6072, alpha = .05

.60 > .05, which means Lot 2 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.
![image](https://user-images.githubusercontent.com/104603177/184519258-89236732-aeb1-4562-b80d-2f020b5f8b76.png)
Lot 3: p-value = .04168, alpha = .05
.04 < .05, which means it is statistically significant from the normal distribution and normality cannot be assumed. However, the mean falls within the 95% confidence interval.

## Study Design: MechaCar vs Competition

What metric or metrics are you going to test?

The next metrics to test should be the safety rating, horsepower, and highway fuel efficiency, which address some safety concerns of consumers.


What is the null hypothesis or alternative hypothesis?

The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero.


What statistical test would you use to test the hypothesis? And why?

Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.
What data is needed to run the statistical test?

Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors.




