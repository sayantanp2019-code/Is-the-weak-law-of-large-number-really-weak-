set.seed(123)
n <- 2000
X <- numeric(n)
# Generate independent, non-identically distributed Exponential RVs
for (i in 1:n)
{
  lambda <- 1 + 1/i
  X[i] <- rexp(1, rate = lambda)
}

# Compute running averages
running_mean <- cumsum(X) / (1:n)

# Plot running sample mean
plot(1:n, running_mean, type = "l", col = "blue", lwd = 2,
     main = "WLLN for Exponential(λ_n = 1 + 1/n)",
     xlab = "n", ylab = "Sample Mean")
abline(h = 1, col = "red", lty = 2)  # Target mean
legend("topright", legend = c("Running Mean", "Limiting Mean ≈ 1"),
       col = c("blue", "red"), lty = c(1, 2), bty = "n")

