growth_data <- read.csv("experiment.csv")

#defining functions

N0 <- exp(6.88301)

r <- 1.004e-02 

K <- 6.00e+10

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

exponential_fun <- function(t) {
  N <- N0*exp(r*t)
  return(N)
}
  
##graph comparing curves on normal scale

ggplot(aes(t,N), data = growth_data) +
    
  geom_function(fun=logistic_fun, aes(color ="Logistic")) +  
    
  geom_function(fun=exponential_fun, aes(color = "Exponential")) +
  
  guides(colour = guide_legend(title = "Growth Curve")) +
  
  scale_colour_manual(values = c("blue4", "cyan3")) +
      
  labs(x = "Time (minutes)", y = "N (# cells)", title = "Comparison of Exponential and Logistic Growth Curves")

  
##graph zooming in to show the different shapes of the curves 
 
  ggplot(aes(t,N), data = growth_data) +
    
    geom_function(fun=logistic_fun, aes(color ="Logistic")) +  
    
    geom_function(fun=exponential_fun, aes(color = "Exponential")) +
    
    guides(colour = guide_legend(title = "Growth Curve")) +
    
    coord_cartesian(ylim = c(0,6.4037e+10)) +
    
    scale_colour_manual(values = c("blue4", "cyan3")) +
    
    labs(x = "Time (minutes)", y = "N (# cells)", title = "Comparison of Exponential and Logistic Growth Curves")
  
##graph comparing curves on a semilog plot
  
  ggplot(aes(t,N), data = growth_data) +
    
    geom_function(fun=logistic_fun, aes(color ="Logistic")) +  
    
    geom_function(fun=exponential_fun, aes(color = "Exponential")) +
    
    guides(colour = guide_legend(title = "Growth Curve")) +
    
    scale_y_continuous(trans='log10') +
    
    scale_colour_manual(values = c("blue4", "cyan3")) +
    
    labs(x = "Time (minutes)", y = "Log10(N)", title = "Comparison of Exponential and Logistic Growth Curves on Semi-log Plot")
  
  

  