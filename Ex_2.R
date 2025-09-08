set.seed(123)
n <- 1000
X <- numeric(n)
# Generate independent, non-identical normal variables with increasing variance
for (i in 1:n)
{
  X[i] <- rnorm(1, mean = 0, sd = i)
}
# Compute running averages
running_mean <- cumsum(X) / (1:n)
# Plot the sample average
plot(1:n, running_mean, type = "l", col = "darkgreen", lwd = 2,
     main = "Failure of WLLN: Growing Variance",
     xlab = "n", ylab = "Sample Mean")
abline(h = 0, col = "red", lty = 2)  # True mean
legend("topright", legend = c("Running Mean", "True Mean = 0"),
       col = c("darkgreen", "red"), lty = c(1, 2), bty = "n")

