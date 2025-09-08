# Simulation parameters
set.seed(123)
n <- 1000 
X <- numeric(n) 
# Generate independent, non-identical normal variables
for (i in 1:n) 
  { 
    mu <- 1
    sigma <- sqrt(1/i) 
    X[i] <- rnorm(1, mean = mu, sd = sigma)
  } 
# Compute running averages 
running_mean <- cumsum(X) / (1:n)
# Plot the sample average
plot(1:n, running_mean, type = "l", col = "blue", lwd = 2,
     main = "WLLN: Convergence of Sample Mean", 
     xlab = "n", ylab = "Sample Mean") 
abline(h = 1, col = "red", lty = 2) # True mean 
legend("bottomright", legend = c("Running Mean", "True Mean = 1"),
       col = c("blue", "red"), 
       lty = c(1, 2), bty = "n")

