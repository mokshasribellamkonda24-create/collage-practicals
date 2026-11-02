
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 11
# Evaluate Classification Models Using Confusion Matrix,
# ROC Curve, and Performance Metrics in R


# PART A: Create Diabetes Dataset

diabetes <- data.frame(
  Glucose = c(85, 90, 95, 100, 110, 120, 125, 130,
              135, 140, 145, 150, 155, 160, 165, 170,
              175, 180, 185, 190),
  
  BMI = c(22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
          32, 33, 34, 35, 36, 37, 38, 39, 40, 41),
  
  Age = c(21, 23, 25, 27, 29, 31, 33, 35, 37, 39,
          41, 43, 45, 47, 49, 51, 53, 55, 57, 59),
  
  Outcome = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
)

# Display Dataset
print(diabetes)

# Display Structure
str(diabetes)


# PART B: Build Logistic Regression Model

model <- glm(
  Outcome ~ Glucose + BMI + Age,
  data = diabetes,
  family = binomial
)

# Display Model Summary
summary(model)


# PART C: Generate Predictions

prob <- predict(
  model,
  type = "response"
)

# Convert Probabilities into Classes
pred <- ifelse(prob >= 0.5, 1, 0)

# Display Predicted Values
print(prob)
print(pred)


# PART D: Create Confusion Matrix

conf_matrix <- table(
  Actual = diabetes$Outcome,
  Predicted = pred
)

print(conf_matrix)


# PART E: Calculate Accuracy

accuracy <- mean(pred == diabetes$Outcome)

cat("Accuracy:", accuracy, "\n")
cat("Accuracy Percentage:", accuracy * 100, "%\n")


# PART F: Calculate True Positive,
# False Positive, True Negative and False Negative

TP <- conf_matrix["1", "1"]
TN <- conf_matrix["0", "0"]
FP <- conf_matrix["0", "1"]
FN <- conf_matrix["1", "0"]

cat("True Positive:", TP, "\n")
cat("True Negative:", TN, "\n")
cat("False Positive:", FP, "\n")
cat("False Negative:", FN, "\n")


# PART G: Calculate Precision

precision <- TP / (TP + FP)

cat("Precision:", precision, "\n")


# PART H: Calculate Recall

recall <- TP / (TP + FN)

cat("Recall:", recall, "\n")


# PART I: Calculate F1 Score

f1_score <- 2 * (precision * recall) /
  (precision + recall)

cat("F1 Score:", f1_score, "\n")


# PART J: Install and Load pROC Package

if (!requireNamespace("pROC", quietly = TRUE)) {
  install.packages("pROC")
}

library(pROC)


# PART K: Generate ROC Curve

roc_curve <- roc(
  diabetes$Outcome,
  prob
)

# Plot ROC Curve
plot(
  roc_curve,
  col = "blue",
  main = "ROC Curve - Logistic Regression",
  lwd = 2
)

# Add Reference Line
abline(
  a = 0,
  b = 1,
  col = "red",
  lty = 2
)


# PART L: Calculate AUC

auc_value <- auc(roc_curve)

cat("AUC Value:", as.numeric(auc_value), "\n")


# PART M: Display All Performance Metrics

cat("\nCLASSIFICATION MODEL PERFORMANCE\n")

cat("Accuracy:", accuracy, "\n")
cat("Precision:", precision, "\n")
cat("Recall:", recall, "\n")
cat("F1 Score:", f1_score, "\n")
cat("AUC:", as.numeric(auc_value), "\n")


# RESULT

cat("\nExperiment No. 11 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
