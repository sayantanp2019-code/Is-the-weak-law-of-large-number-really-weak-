# Set seed for reproducibility
set.seed(123)
# Number of terms
N <- 10000
# Generate the mean sequence
mu <- (-1)^(1:N) / (1:N)
# Standard deviation is sqrt(2) since variance = 2
sigma <- sqrt(2)
# Generate X_n ~ N(mu_n, 2)
X <- rnorm(N, mean = mu, sd = sigma)
# Compute running averages
running_avg <- cumsum(X) / (1:n)
# Plot the running average
plot(1:N, running_avg, type = "l", col = "blue",
     main = "Convergence of Sample Average (WLLN Simulation)",
     xlab = "n", ylab = "Running Average")
abline(h = 0, col = "red", lty = 2)  # True limit (0)
legend("bottomright", legend = c("Running Mean", "True Mean = 0"),
       col = c("blue", "red"), lty = c(1, 2), bty = "n")

