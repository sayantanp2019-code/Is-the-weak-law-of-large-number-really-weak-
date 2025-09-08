set.seed(123)
n <- 1000
X <- numeric(n)

# Generate independent Log-Normal RVs with shrinking variance
for (i in 1:n) {
  mu <- 0
  sigma <-  sqrt(1-1/i)
  X[i] <- rlnorm(1, meanlog = mu, sdlog = sigma)
}

# Running mean
running_mean <- cumsum(X) / (1:n)

# Plot
plot(1:n, running_mean, type = "l", col = "blue", lwd = 2,
     main = "WLLN: Log-Normal with Shrinking Variance",
     xlab = "n", ylab = "Sample Mean")
abline(h = exp(0.5), col = "red", lty = 2)  # Limiting mean
legend("topright", legend = c("Running Mean", "Limiting Mean ≈ e^1/2"),
       col = c("blue", "red"), lty = c(1, 2), bty = "n")




