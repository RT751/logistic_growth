**1. Annotate the README.md file in your logistic growth repo with more detailed information about the analysis. Add a section on the results and include the estimates for N0, r and K (mention which .csv file you used).**

**Logistic growth analysis**

This analysis fitted a logistic growth model to the *Escherichia coli* population growth data from the 'experiment.csv' file. A linear approximation was used to estimate the parameters *N0* (initial population size), *K* (carrying capacity) and *r* (growth rate) from the data. These parameters were used to fit a logistic growth model to the data. 

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
To estimate the parameter *K*, the region of the graph where *N(t)* = *K* was used. The region *t* > 2500 was chosen because the population size has plateaued and reached a stable point in this region of the generated graph. A linear model for this region was created where *N* is a constant (lm(N ~ 1)). The estimate of the intercept from this linear model is the estimate for K.

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



When both the data and this function were plotted, it was evident that the logistic function is a good fit to the data. 







**2. Use your estimates of *N0* and *r* to calculate the population size at t = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth?**
 ```math
\begin{equation}
N(t) = N_0 e^{rt}
\end{equation}
```
  ```math
\begin{equation}
N_0 = 975.5486201
\end{equation}
```
  ```math
\begin{equation}
r = 0.01004
\end{equation}
```
  ```math
\begin{equation}
t = 4980
\end{equation}
```
  ```math
\begin{equation}
N(t) = 975.5486201 * e^{0.01004*4980} = 5.053887596*10^{24} = 5,053,887,596,000,000,000,000,000
\end{equation},
```

This value is much greater than the population size of 60,000,000,000 predicted under the logistic growth model. This is because a logistic model considers that resources are not finite meaning a population cannot continue to grow exponentially and will eventually settle at a carrying capacity, in this case, 60,000,000,000.


**3. Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the README.md file so it can be viewed in the repo homepage.**

This graph compares the exponential and logistic growth curves.
https://github.com/B-Thomas8/logistic_growth/blob/dev/comparison.png?raw=true)![image](https://github.com/user-attachments/assets/0a740d21-09da-4c0c-bb4c-e22593d63772)

This graph compares the growth curves on a semilog plot where the y-axis has been log-transformed. This shows how both growth curves start with exponential increases, but the logistic growth curve eventually stabilises at an equilibrium whereas the exponential growth curve continues to increase exponentially.
https://github.com/B-Thomas8/logistic_growth/blob/dev/comparison.png?raw=true![image](https://github.com/user-attachments/assets/a7ba1539-b08e-4960-ba3a-7f1812a47b64)




