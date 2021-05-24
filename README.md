# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![summary stats](https://raw.githubusercontent.com/aquinn107/MechaCar_Statistical_Analysis/main/summary%20stats.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The following variables based upon their Pr(>|t|) score are unlikely to provide a non-random variance: the Intercept, Vehicle Length and Ground Clearance. With the Intercept having a high level of statistical significance, it means there are other variables and factors that contribute to the variation in mpg.


Is the slope of the linear model considered to be zero? Why or why not?

If there is no significant linear relationship, each dependent value would be determined by random chance and error. As previously mentioned, there is a sigificant linear relationship, therefore the slope is not considered zero.


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-Squared value of 0.7149 indicates that it is an effective model to predict mpg, although it may be guilty of overfitting given the lack of significant variables (only vehicle length and ground clearance).


## Summary Statistics on Suspension Coils
![TotalSummary](https://raw.githubusercontent.com/aquinn107/MechaCar_Statistical_Analysis/main/TotalSummary.png)

![LotSummary](https://raw.githubusercontent.com/aquinn107/MechaCar_Statistical_Analysis/main/LotSummary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
We can see in the total summary that the variance suspension coils meet the dewsign specfications, but we need to look further into each Lot. When loloking into the statistical summary for each lot, both Lot 1 and Lot 2 have a low variance, both within the design specifications. The outlier, Lot 3 has a significantly higher variance over 220 which does not meet the required specification.

## T-Tests on Suspension Coils
![Lot1 t_test](https://raw.githubusercontent.com/aquinn107/MechaCar_Statistical_Analysis/main/Lot1%20t_test.png)
![Lot2 t_test](https://raw.githubusercontent.com/aquinn107/MechaCar_Statistical_Analysis/main/Lot2%20t_test.png)
![Lot3 t_test](https://raw.githubusercontent.com/aquinn107/MechaCar_Statistical_Analysis/main/Lot3%20t_test.png)
In looking at the overall T-tests that were produced for each lot, we have determined that they are statistically significant and we would not reject the null hypothesis. Within each individual lot, we determined the p-value of less than 0.05 which would lead us to not reject the null hypothesis.

## Study Design: MechaCar vs Competition
How does MechaCar perform against the competition when it comes to MPG and price, 2 big factors for anyone in the market for a vehicle. Key metrics that would be used to measure this data would be Price, MPG-City, and MPG-Highway.
Null Hypothesis: There is no significant difference between the competition and MechaCar.
Alternative Hypothesis: There is a significant difference between the competition and MechaCar.
Statistical tests that we would use to test the hypthesis would be
-What statistical test would you use to test the hypothesis? And why?
-What data is needed to run the statistical test?
