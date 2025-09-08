# Number of samples
n <- 10000
# Generate lower and upper bounds for each Uniform distribution
a <- -1 + 1/(1:n)
b <-  1 - 1/(1:n)
# Generate Uniform samples with varying bounds
set.seed(123)  # for reproducibility
X <- runif(n, min = a, max = b)
# Compute running sample means
sample_means <- cumsum(X) / (1:n)
# Plot the running mean
plot(1:n, sample_means, type = "l", col = "blue",
     main = "Khinchin's WLLN for Uniform(-1+1/n, 1-1/n)",
     xlab = "n", ylab = "Sample Mean")
abline(h = 0, col = "red", lty = 2)
legend("topright", legend = c("Sample Mean", "Expected Value (0)"),
       col = c("blue", "red"), lty = c(1, 2), bty = "n")




