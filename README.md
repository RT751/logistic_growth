1. Annotate the README.md file in your logistic growth repo with more detailed information about the analysis. Add a section on the results and include the estimates for N0, r and K (mention which *.csv file you used).

**Logistic growth analysis**

This analysis fitted a logistic growth model to the *Escherichia coli* population growth data from the 'experiment.csv' file. A linear approximation was used to estimate the parameters *N0* (initial population size), *K* (carrying capacity) and *r* (growth rate) from the data. These parameters were used to create a logistic growth model for the data. 

**Results**

***Plotting data***: Firstly, a plot showing the population size over time was produced using the population growth data from the 'experiment.csv' file. The data showed a sigmoidal pattern which is indicative of logistic growth. The y-axis was then log-transformed to see if the population growth was exponential, where a positive linear relationship on the plot indicates exponential growth. The plot showed that growth was exponential from 0 until approximately 2000 minutes, after which growth slows down and reaches an equilibrium. 

***Estimating N0 and r***:
To estimate the parameters *N0* and *r*, the region of the graph exhibiting exponential growth is used. t < 1000 was used in this case because this is a small value of t and this region shows exponential growth in the graph. Because the growth is exponential, the equation for population size in this region can be approximated as:
  ```math
\begin{equation}
N(t) = N_0 e^{rt}
\end{equation}
```
This can be transformed into a linear relationship by taking the natural log. This gives the equation:
  ```math
\begin{equation}
log(N(t)) = log(N_0) + rt
\end{equation}
```
To estimate log(*N0*) and *r* using this equation, a linear model was fitted to the growth data between t = 0 and t = 1000 where the natural log of N was the response variable and time was the predictor variable. The summary of this model shows the estimate for the gradient of the line (*r*) and the y-intercept (log(*N0*)). To obtain N0 the exponential function of the y-intercept was taken.
```math
\begin{equation}
N_0 = exp(6.883) = 975.5486201
\end{equation}
```

```math
\begin{equation}
 r = 1.004 * 10^{-2} = 0.01004
\end{equation}
```



***Estimating K***:
To estimate the parameter *K*, the region of the graph where *N(t)* = *K* was used. The region *t*>2500 was chosen because the population size has plateaued and reached a stable point in this region of the generated graph. A linear model for this region was created where *N* is a constant (lm(N ~ 1)). The estimate of the intercept from this linear model is the estimate for K.

  So,
  ```math
\begin{equation}
K = 6 * 10^{10}
\end{equation}
```


Using these estimated parameters, a logistic function was created where:
  ```math
\begin{equation}
N(t) = \frac{K N_0 e^{rt}}{K-N_0+N_0 e^{rt}}
\end{equation}
```



When both the data and this function were plotted, it is evident that the logistic function is a good fit to the data. 






