# Set sample size
n <- 10000

# Preallocate vector for storing gamma samples
X <- numeric(n)

# Set seed for reproducibility
set.seed(42)

# Generate independent Gamma(n, n) variables
for (i in 1:n) {
  X[i] <- rgamma(1, shape = i, rate = i)  # Gamma(i, i)
}

# Compute running sample means
sample_means <- cumsum(X) / (1:n)

# Plot sample mean convergence
plot(1:n, sample_means, type = "l", col = "blue", log = "x",
     xlab = "n (log scale)", ylab = "Sample Mean",
     main = "Khinchin's WLLN for Xn ~ Gamma(n, n)")
abline(h = 1, col = "darkgreen", lty = 2, lwd = 2)
legend("topright", legend = c("Sample Mean", "True Mean = 1"),
       col = c("blue", "darkgreen"), lty = c(1, 2), bty = "n")

