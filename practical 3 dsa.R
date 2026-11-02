
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 3
# Data Cleaning and Preprocessing


# PART A: Create and Import Dataset

students <- data.frame(
  StudentID = c(101, 102, 103, 103, 104),
  Name = c("Rahul", "Priya", "Amit", "Amit", "Neha"),
  Gender = c("Male", "Female", "Male", "Male", "Female"),
  MathScore = c(78, 85, 92, 92, NA),
  Percentage = c(78.5, NA, 91.0, 91.0, 88.5)
)

# Display Dataset
print(students)
head(students)


# PART B: Inspect Dataset Structure

str(students)

summary(students)

dim(students)


# PART C: Identify Duplicate Records

# Check duplicate records
duplicated(students)

# Count duplicates
sum(duplicated(students))


# PART D: Remove Duplicate Records

students_clean <- unique(students)

# Display cleaned dataset
print(students_clean)

# Check dimensions
dim(students_clean)


# PART E: Identify Missing Values

# Total missing values
sum(is.na(students_clean))

# Column-wise missing values
colSums(is.na(students_clean))


# PART F: Handle Missing Values

# Calculate mean of MathScore
mean_score <- mean(students_clean$MathScore,
                   na.rm = TRUE)

# Replace missing MathScore with mean
students_clean$MathScore[
  is.na(students_clean$MathScore)
] <- mean_score

# Calculate mean of Percentage
mean_percentage <- mean(
  students_clean$Percentage,
  na.rm = TRUE
)

# Replace missing Percentage with mean
students_clean$Percentage[
  is.na(students_clean$Percentage)
] <- mean_percentage


# PART G: Standardize Data Formats

# Convert Gender into Factor
students_clean$Gender <-
  as.factor(students_clean$Gender)

# Convert MathScore into Numeric
students_clean$MathScore <-
  as.numeric(students_clean$MathScore)

# Convert Percentage into Numeric
students_clean$Percentage <-
  as.numeric(students_clean$Percentage)

# Verify data structure
str(students_clean)


# PART H: Verify Cleaned Dataset

# Display final cleaned dataset
print(students_clean)

# Generate summary statistics
summary(students_clean)

# Check remaining missing values
sum(is.na(students_clean))

# Check duplicate records again
sum(duplicated(students_clean))

# Display final dimensions
dim(students_clean)


# RESULT

cat("\nExperiment No. 3 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
cat("Duplicate records removed successfully.\n")
cat("Missing values handled successfully.\n")
cat("Data formats standardized successfully.\n")
