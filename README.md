1. Annotate the README.md file in your logistic growth repo with more detailed information about the analysis. Add a section on the results and include the estimates for N0, r and K (mention which *.csv file you used).

**Logistic Growth Analysis**
This analysis fitted a logistic growth model to the *Escherichia coli* population growth data from the 'experiment.csv' file. A linear approximation was used to estimate the parameters N0 (initial population size), K (carrying capacity) and r (growth rate) from the data. These parameters were used to create a logistic growth model for the data. 

**Results**
Firstly, a plot showing the population size over time (in minutes) was produced using the population growth data from the 'experiment.csv' file. The data showed a sigmoidal pattern which is indicative of logistic growth. The y-axis was then log-transformed to see if the population growth was exponential, where a positive linear relationship on the plot indicates exponential growth. The plot showed that growth was exponential from t=0 until approximately t=2000, after which growth slows down and reaches an equilibrium. 

To estimate the parameters N0 and r, the region of the graph exhibiting exponential growth was used. This occurs when N is much smaller than K and t is small. t<1000 was used because this region shows exponential growth in the generated graph. Because the growth is exponential, the equation for population size in this region can be approximated as N(t) = N0 * e^rt. This can be transformed into a linear relationship by taking the natural log. This gives the equation: log(N(t)) = log(N0) + r*t. To estimate log(N0) and r using this eqution, a linear model was fitted to the growth data where the natural log of N (the number of cells) was the response variable and time (below 1000 minutes) was the predictor variable. The summary of this model shows the estimate for the gradient of the line (r) and the y intercept (log(N0)).To obtain N0 the exponential of log(N0) was taken.
N0 = exp(6.883) = 975.5486201
r = 1.004 * 10^-2 = 0.01004

To estimate the paramter K, the region of the graph where N(t) = K was used. The region t>2500 was chosen because the population size has plateaued and reached a stable point in this region of the generated graph. A linear model for this region was created where N is a constant (lm(N~1)). The estimate of the intercept from this linear model is 6 * 10^10.
so ,K = 6 * 10^10

Using these estimated parameters, a logistic function was created where N = (N0*K*exp(rt))/(K-N0+N0*exp(r*t)). When both the data and this function were plotted, it is evident that the logistic function is a good fit to the data. 






