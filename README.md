**1. Annotate the README.md file in your logistic growth repo with more detailed information about the analysis. Add a section on the results and include the estimates for N0, r and K (mention which .csv file you used).**

**Logistic growth analysis**

This analysis fitted a logistic growth model to the *Escherichia coli* population growth data from the 'experiment.csv' file. Linear approximations were used to estimate the parameters $N_0$ (initial population size), *K* (carrying capacity) and *r* (growth rate) from the data. These parameters were used to fit a logistic growth model to the data. 

**Results**

***Plotting data***: Firstly, a plot showing the population size over time was produced using the population growth data from the 'experiment.csv' file. The data showed a sigmoidal pattern which is indicative of logistic growth. 
<p align="center">
     <img src="https://github.com/RT751/logistic_growth/blob/main/logistic_growth_plot.png?raw=true" width="550" height="400">
  </p>

The y-axis was then log-transformed to see if the population growth was exponential, where a positive linear relationship on the plot indicates exponential growth. The plot showed that growth was exponential from 0 until approximately 1750 minutes, after which growth slows down and reaches an equilibrium. 
<p align="center">
     <img src="https://github.com/RT751/logistic_growth/blob/main/semi-log-plot.png?raw=true" width="550" height="400">
  </p>

***Estimating N0 and r***:
To estimate the parameters $N_0$ and *r*, the region of the graph exhibiting exponential growth was used. t < 1000 was used in this case because this is a small value of t and this region shows exponential growth in the graph. Because the growth is exponential, the equation for population size in this region can be approximated as $N(t) = N_0 e^{rt}$. This can be transformed into a linear relationship by taking the natural logarithm. This gives the equation $ln(N(t)) = ln(N_0) + rt$. To estimate $N_0$ and *r* using this equation, a linear model was fitted to the growth data between t = 0 and t = 1000 where the natural log of N $(ln(N(t)))$ was the response variable and time (*t*) was the explanatory variable. The summary of this model shows the estimate for the gradient of the line (*r*) and the y-intercept $(ln(N_0))$. To obtain $N_0$ the exponential function of the y-intercept was taken.

$N_0 = exp(6.883) = 975.5486201$

$r = 1.004 * 10^{-2} = 0.01004$



***Estimating K***:
To estimate the parameter *K*, the region of the graph where *N(t)* = *K* was used. The region *t* > 2500 was chosen because the population size has plateaued and reached a stable point (*K*) in this region of the graph. A linear model for this region was produced where *N* is a constant (lm(N ~ 1)). The estimate of the intercept from the summary of this linear model is the estimate for K.

  So,
$K = 6 * 10^{10}$



These estimated parameters were inputted into a logistic function where:
  ```math
\begin{equation}
N(t) = \frac{K N_0 e^{rt}}{K-N_0+N_0 e^{rt}}
\end{equation}
```



When the raw data and this function were plotted together, it was evident that the logistic function is a good fit to the data. 
<p align="center">
     <img src="https://github.com/RT751/logistic_growth/blob/main/model-plot.png?raw=true" width="550" height="400">
  </p>






**2. Use your estimates of *N0* and *r* to calculate the population size at t = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth?**

a) Exponential growth:

$N(t) = N_0 e^{rt}$


$N_0 = 975.5486201$

$r = 0.01004$

$t = 4980$

$N(t) = 975.5486201 * e^{(0.01004)(4980)} = 5.053887596 * 10^{24} = 5,053,887,596,000,000,000,000,000$




b) Logistic growth:

$N(t) = \frac{K N_0 e^{rt}}{K-N_0+N_0 e^{rt}}$

$N_0 = 975.5486201$

$r = 0.01004$

$t = 4980$

$K = 6 * 10^{10}$

$N(t) = \frac{(6 * 10^{10})(975.5486201) e^{(0.01004)(4980)}}{(6 * 10^{10})-(975.5486201)+((975.5486201) e^{(0.01004)(4980)}}) = 6 * 10^{10} = 60,000,000,000$ 

So, according to the logistic growth equation, N is equal to K ($6 * 10^{10}$) at 4980 minutes. This is expected as population growth has stabilised by 4980 minutes on the graph.

The population size at 4980 minutes according to exponential growth is much greater than the population size predicted under the logistic growth model. This is because a logistic model considers that resources are not finite meaning a population cannot continue to grow exponentially and will eventually settle at a carrying capacity, in this case, 60,000,000,000.


**3. Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the README.md file so it can be viewed on the repo homepage.**

This graph compares the exponential and logistic growth curves.
<p align="center">
     <img src="https://github.com/RT751/logistic_growth/blob/main/Comparison_A.png?raw=true" width="550" height="400">
  </p>


In the graph above, the shapes of the growth curves cannot be compared because the logistic curve appears as a flat line. To compare the shapes of the curves, we can zoom in on a smaller range of the y-axis. This graph is shown below. 

<p align="center">
     <img src="https://github.com/RT751/logistic_growth/blob/main/Comparison_B.png?raw=true" width="550" height="400">
  </p>

The curves can also be compared on a Semi-log plot where the y-axis has been log-transformed. This shows exponential growth as a positive linear relationship. The graph illustrates how both growth curves start with exponential increases, but the logistic growth curve eventually stabilises at an equilibrium whereas the exponential growth curve continues to increase exponentially.

<p align="center">
     <img src="https://github.com/RT751/logistic_growth/blob/main/Comparison_C.png?raw=true" width="550" height="400">
  </p>

Code for these graphs found at: https://github.com/RT751/logistic_growth/blob/main/comparison.R

