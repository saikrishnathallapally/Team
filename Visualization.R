boxplot(
  real_time_seconds ~ verified, 
  data,
  main = "Difference in the mean of real life time speed run took between \n verified and non-verified members",
  xlab = "Verified",
  ylab = "Real life Time the Speedrun took in seconds",
  ylim = c(0, 1200),
  pch = 1,
  cex = 0.7,
  col = c("lightgreen", "steelblue")
)

legend(
  x = "topright",
  legend = c("Non-Verified", "Verified"),
  lwd = 2,
  lty = c(0, 0),
  bty = "n",
  cex = 0.8,
  inset = 0.01,
  col = c("lightgreen", "steelblue"),
  pch = c(15, 15)
)

hist(
  data$real_time_seconds, 
  main = "Distribution of Real Life Time Speedrun ",
  ylab = "Density", 
  xlab = "Real Life Time Speedrun (In Seconds)",
  freq = FALSE, 
  col = "pink", 
  border = "black"
)

mean_value <- mean(data$real_time_seconds)
sd_value <- sd(data$real_time_seconds)
min_value <- min(data$real_time_seconds)
max_value <- max(data$real_time_seconds)

xvalue <- seq(min_value - 10, max_value + 10, length.out = 250)
yvalue <- dnorm(x = xvalue, mean = mean_value, sd = sd_value)

lines(xvalue, yvalue, type = "l", col = "darkblue", lwd = 2)
legend(
  "topright",   legend = "Normal Distribution Curve")
dev.off()



data$verified <- as.factor(data$verified)
# Wilcox test
wilcox.test(data$real_time_seconds ~ data$verified, exact = FALSE)
