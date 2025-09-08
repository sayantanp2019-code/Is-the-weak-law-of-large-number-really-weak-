# Load necessary package
if (!require(VGAM)) install.packages("VGAM"); library(VGAM)
# Sample size
n <- 10000
# Function to generate Pareto(alpha) with scale = 1
rpareto1 <- function(n, alpha) {
  return((1 / runif(n))^(1 / alpha))  # Inverse transform sampling
}
# Initialize vector to store X_n values
X <- numeric(n)
# Generate independent Pareto(0.9 + 1/n) variables
set.seed(123)
for (i in 1:n) {
  alpha <- 0.9 + 1/i
  X[i] <- rpareto1(1, alpha)
}
# Compute running sample means
sample_means <- cumsum(X) / (1:n)
# Plot
plot(1:n, sample_means, type = "l", col = "red", log = "x",
     main = "Failure of WLLN for Pareto(0.9 + 1/n)",
     xlab = "n (log scale)", ylab = "Sample Mean")
abline(h = 0, col = "black", lty = 2) #True mean
legend("topleft", legend = c("Sample Mean","True mean =0"),
       col = c("red","black"), lty = c(1,2), bty = "n")

