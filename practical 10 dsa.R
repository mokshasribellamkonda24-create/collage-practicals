
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 10
# Build Classification Models (Logistic Regression
# and Decision Tree) Using R


# PART A: Create Dataset

Student <- data.frame(
  StudyHours = c(1, 2, 2, 3, 3, 4, 4, 5, 5, 6),
  
  Attendance = c(60, 65, 62, 70, 72, 75, 78, 80, 85, 90),
  
  Result = c(
    "Fail", "Fail", "Fail", "Fail", "Pass",
    "Pass", "Pass", "Pass", "Pass", "Pass"
  )
)

# Convert Result into Factor
Student$Result <- factor(Student$Result,
                         levels = c("Fail", "Pass"))

# Display Dataset
print(Student)

# Display Structure
str(Student)


# PART B: Logistic Regression

# Build Logistic Regression Model
log_model <- glm(
  Result ~ StudyHours,
  data = Student,
  family = binomial
)

# Display Model Summary
summary(log_model)


# PART C: Predict Student Results

# Calculate Probabilities
probability <- predict(
  log_model,
  type = "response"
)

# Convert Probabilities into Classes
predicted_result <- ifelse(
  probability >= 0.5,
  "Pass",
  "Fail"
)

# Display Predictions
print(predicted_result)


# PART D: Create Logistic Regression
# Prediction Table

log_result <- data.frame(
  Actual = Student$Result,
  Probability = probability,
  Predicted = predicted_result
)

print(log_result)


# PART E: Logistic Regression Confusion Matrix

log_confusion <- table(
  Actual = Student$Result,
  Predicted = predicted_result
)

print(log_confusion)


# PART F: Logistic Regression Accuracy

log_accuracy <- mean(
  predicted_result == as.character(Student$Result)
)

print(log_accuracy)

cat("Logistic Regression Accuracy:",
    log_accuracy * 100, "%\n")


# PART G: Install and Load Decision Tree Packages

if (!requireNamespace("rpart", quietly = TRUE)) {
  install.packages("rpart")
}

if (!requireNamespace("rpart.plot", quietly = TRUE)) {
  install.packages("rpart.plot")
}

library(rpart)
library(rpart.plot)


# PART H: Build Decision Tree Model

tree_model <- rpart(
  Result ~ StudyHours + Attendance,
  data = Student,
  method = "class"
)

# Display Decision Tree Model
print(tree_model)


# PART I: Visualize Decision Tree

rpart.plot(
  tree_model,
  main = "Student Pass/Fail Decision Tree"
)


# PART J: Predict Using Decision Tree

tree_prediction <- predict(
  tree_model,
  Student,
  type = "class"
)

print(tree_prediction)


# PART K: Create Decision Tree Prediction Table

tree_result <- data.frame(
  Actual = Student$Result,
  Predicted = tree_prediction
)

print(tree_result)


# PART L: Decision Tree Confusion Matrix

tree_confusion <- table(
  Actual = Student$Result,
  Predicted = tree_prediction
)

print(tree_confusion)


# PART M: Decision Tree Accuracy

tree_accuracy <- mean(
  tree_prediction == Student$Result
)

print(tree_accuracy)

cat("Decision Tree Accuracy:",
    tree_accuracy * 100, "%\n")


# PART N: Compare Both Models

cat("\nCLASSIFICATION MODEL COMPARISON\n")

cat("Logistic Regression Accuracy:",
    log_accuracy * 100, "%\n")

cat("Decision Tree Accuracy:",
    tree_accuracy * 100, "%\n")


# RESULT

cat("\nExperiment No. 10 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
