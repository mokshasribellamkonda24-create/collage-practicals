
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 5
# Variable Transformation (Binning, Encoding, Scaling)
# and Creating New Features (Derived Columns)


# PART A: Create Dataset

students <- data.frame(
  Student = c("A", "B", "C", "D"),
  Age = c(18, 19, 18, 20),
  Gender = c("Male", "Female", "Female", "Male"),
  Marks = c(85, 45, 72, 30),
  StudyHours = c(5, 2, 4, 1)
)

# Display Original Dataset
print(students)


# PART B: Binning

students$Performance <- cut(
  students$Marks,
  breaks = c(0, 40, 60, 80, 100),
  labels = c("Poor", "Average", "Good", "Excellent"),
  include.lowest = TRUE
)

# Display Binning Result
print(students$Performance)


# PART C: Encoding

students$Gender_Code <- ifelse(
  students$Gender == "Male", 1, 0
)

# Display Encoding Result
print(students$Gender_Code)


# PART D: Scaling (Min-Max Scaling)

students$Marks_Scaled <-
  (students$Marks - min(students$Marks)) /
  (max(students$Marks) - min(students$Marks))

# Display Scaled Values
print(students$Marks_Scaled)


# PART E: Creating New Features (Derived Columns)

students$Marks_Per_Hour <-
  students$Marks / students$StudyHours

# Display Derived Column
print(students$Marks_Per_Hour)


# PART F: Display Final Transformed Dataset

print(students)


# PART G: Summary of Transformed Dataset

summary(students)


# PART H: Display Individual Results

cat("\nBinning Results:\n")
print(students[, c("Student", "Marks", "Performance")])

cat("\nEncoding Results:\n")
print(students[, c("Student", "Gender", "Gender_Code")])

cat("\nScaling Results:\n")
print(students[, c("Student", "Marks", "Marks_Scaled")])

cat("\nDerived Features:\n")
print(students[, c("Student", "Marks", "StudyHours",
                   "Marks_Per_Hour")])


# RESULT

cat("\nExperiment No. 5 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
cat("Binning, Encoding, Scaling and Feature Engineering Completed.\n")
