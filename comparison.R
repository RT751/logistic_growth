growth_data <- read.csv("experiment.csv")

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
  
  ggplot(aes(t,N), data = growth_data) +
    
  geom_function(fun=logistic_fun, aes(color ="Logistic")) +  
    
  geom_function(fun=exponential_fun, aes(color = "Exponential")) +
  
  guides(colour = guide_legend(title = "Growth Curve")) +
  
  labs(x = "Time (minutes)", y = "N", title = "Comparison of Exponential and Logistic Growth Curves")
  

 
  
    
  

  