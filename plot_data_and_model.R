#Script to plot data and model

growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small - use this to get r and t
data_subset1 <- growth_data |>
  filter(t<1000) |>
  mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K - use this to get K

data_subset2 <- growth_data |>
  filter(t>2500)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)

N0 <- exp(6.88301)  # using y intercept from above model
  
r <- 1.004e-02 # using x intercept from above model, this will give initial pop size
  
K <- 6.00e+10 # using intercept from second model

###use these parameter estimates for logistic estimate
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}


ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  scale_y_continuous(trans='log10')
  
sink(file = "package-versions.txt")
sessionInfo()
sink()


