
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 8
# Build a Linear Regression Model to Predict a Numeric Variable Using R


# PART A: Create Dataset

# Student Study Hours
hours <- c(1, 2, 3, 4, 5)

# Student Exam Scores
score <- c(35, 45, 50, 60, 70)

# Create Data Frame
students <- data.frame(hours, score)

# Display Dataset
print(students)


# PART B: Build Simple Linear Regression Model

model <- lm(score ~ hours)

# Display Model
print(model)


# PART C: Display Model Summary

summary(model)


# PART D: Interpret Regression Coefficients

# Display coefficients
coefficients(model)

# Display intercept
intercept <- coef(model)[1]
print(intercept)

# Display slope
slope <- coef(model)[2]
print(slope)


# PART E: Make Predictions

# Create New Student Data
new_student <- data.frame(hours = 6)

# Predict Exam Score
prediction <- predict(model, new_student)

print(prediction)


# PART F: Visualize Regression Model

plot(hours, score,
     main = "Linear Regression Model",
     xlab = "Study Hours",
     ylab = "Exam Score",
     col = "red",
     pch = 19)

# Add Regression Line
abline(model, col = "blue", lwd = 2)


# PART G: Multiple Linear Regression

# Create Dataset
students2 <- data.frame(
  Hours = c(1, 2, 3, 4, 5, 6),
  Attendance = c(60, 65, 70, 80, 85, 95),
  Marks = c(35, 40, 50, 60, 68, 85)
)

# Build Multiple Regression Model
model2 <- lm(Marks ~ Hours + Attendance,
             data = students2)

# Display Model Summary
summary(model2)

# Predict Marks
new_data <- data.frame(
  Hours = 7,
  Attendance = 90
)

prediction2 <- predict(model2, new_data)

print(prediction2)


# PART H: Display Final Results

cat("\nSimple Linear Regression Results\n")

cat("Intercept:", intercept, "\n")

cat("Slope:", slope, "\n")

cat("Predicted Score for 6 Hours:", prediction, "\n")

cat("Multiple Regression Prediction:", prediction2, "\n")


# RESULT

cat("\nExperiment No. 8 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
