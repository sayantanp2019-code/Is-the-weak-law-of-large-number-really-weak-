# Set number of samples
n <- 10000
# Generate normal variables with mean 0 and variance ln(i)
X <- rnorm(n, mean = 0, sd = sqrt(log(1:n)))
# Compute sample means
sample_means <- cumsum(X) / (1:n)
# Plot sample means to see convergence
plot(1:n, sample_means, type = "l", col = "blue", 
     main = "Khinchin's WLLN: Sample Mean vs n",
     xlab = "n", ylab = "Sample Mean")
abline(h = 0, col = "red", lty = 2)  # True mean = 0
legend("bottomright", legend = c("Running Mean", "True Mean = 0"),
       col = c("blue", "red"), lty = c(1, 2), bty = "n")

