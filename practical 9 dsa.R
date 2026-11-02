
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 9
# Evaluate and Interpret a Linear Regression Model Using R


# PART A: Create Dataset

# Student Study Hours
hours <- c(1, 2, 3, 4, 5)

# Student Exam Scores
score <- c(35, 45, 50, 60, 70)

# Display Dataset
print(hours)
print(score)


# PART B: Build Linear Regression Model

model <- lm(score ~ hours)

# Display Model
print(model)


# PART C: Display Model Summary

summary(model)


# PART D: Understand Regression Coefficients

# Display Regression Coefficients
coefficients(model)

# Display Intercept
intercept <- coef(model)[1]
print(intercept)

# Display Slope
slope <- coef(model)[2]
print(slope)

# Regression Equation
cat("Regression Equation: Score =",
    intercept, "+", slope, "* Hours\n")


# PART E: Calculate R-squared and Adjusted R-squared

model_summary <- summary(model)

# R-squared
r_squared <- model_summary$r.squared
print(r_squared)

# Adjusted R-squared
adjusted_r_squared <- model_summary$adj.r.squared
print(adjusted_r_squared)


# PART F: Calculate Predicted Values

predicted <- predict(model)

# Display Predicted Values
print(predicted)


# PART G: Calculate Residuals

residual_values <- residuals(model)

# Display Residuals
print(residual_values)


# PART H: Create Result Table

result <- data.frame(
  Actual = score,
  Predicted = predicted,
  Residual = residual_values
)

print(result)


# PART I: Actual vs Predicted Plot

plot(score, predicted,
     xlab = "Actual Score",
     ylab = "Predicted Score",
     main = "Actual vs Predicted Scores",
     col = "red",
     pch = 19)

abline(0, 1, col = "blue", lwd = 2)


# PART J: Residual Plot

plot(model, which = 1)


# PART K: Calculate Mean Squared Error (MSE)

mse <- mean((score - predicted)^2)

print(mse)


# PART L: Calculate Root Mean Squared Error (RMSE)

rmse <- sqrt(mse)

print(rmse)


# PART M: Display Final Evaluation Results

cat("\nLINEAR REGRESSION MODEL EVALUATION\n")

cat("Intercept:", intercept, "\n")

cat("Slope:", slope, "\n")

cat("R-squared:", r_squared, "\n")

cat("Adjusted R-squared:", adjusted_r_squared, "\n")

cat("Mean Squared Error:", mse, "\n")

cat("Root Mean Squared Error:", rmse, "\n")


# RESULT

cat("\nExperiment No. 9 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
