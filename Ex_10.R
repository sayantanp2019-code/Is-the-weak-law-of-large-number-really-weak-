# Simulation parameters
n <- 10000
sample_means <- numeric(n)
X <- numeric(n)

set.seed(123)

# Simulate scaled chi-squared(1) variables
for (i in 1:n) {
  Z_i <- rchisq(1, df = 1)
  X[i] <- Z_i / sqrt(i)
  sample_means[i] <- mean(X[1:i])
}

# Plot the sample mean
plot(1:n, sample_means, type = "l", col = "blue", lwd = 2,
     main = "Sample Mean of Scaled Chi-squared(1) Variables",
     xlab = "n", ylab = "Sample Mean")
abline(h = 0, col = "red", lty = 2)

legend("topright",
       legend = c("Sample Mean", "Limiting Value = 0"),
       col = c("blue", "red"),
       lty = c(1, 2), lwd = 2, bty = "n")

