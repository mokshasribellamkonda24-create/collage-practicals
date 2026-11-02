
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 6
# Perform Exploratory Data Analysis (EDA)
# Using Summary Statistics and Data Visualization in R


# PART A: Create Dataset

students <- data.frame(
  Student = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
              "K", "L", "M", "N", "O"),
  
  Age = c(18, 19, 18, 20, 19, 21, 20, 18, 22, 19,
          20, 21, 18, 22, 19),
  
  Gender = c("Male", "Female", "Female", "Male", "Female",
             "Male", "Female", "Male", "Female", "Male",
             "Female", "Male", "Female", "Male", "Female"),
  
  StudyHours = c(5, 2, 4, 1, 6, 7, 3, 5, 8, 4,
                 6, 2, 5, 7, 3),
  
  Attendance = c(90, 75, 85, 60, 95, 88, 72, 91, 96, 80,
                 89, 68, 93, 97, 78),
  
  Marks = c(85, 45, 72, 30, 92, 88, 55, 81, 95, 67,
            84, 42, 90, 94, 58),
  
  AssignmentScore = c(88, 50, 75, 35, 95, 85, 60, 82, 96, 70,
                      86, 45, 91, 93, 62)
)


# PART B: Basic EDA Commands

# Display first six records
head(students)

# Display last six records
tail(students)

# Display dataset structure
str(students)

# Display summary statistics
summary(students)

# Display dimensions
dim(students)

# Display column names
names(students)


# PART C: Calculate Descriptive Statistics

# Mean of Marks
mean(students$Marks)

# Median of Marks
median(students$Marks)

# Standard Deviation of Marks
sd(students$Marks)

# Minimum Marks
min(students$Marks)

# Maximum Marks
max(students$Marks)

# Mean of Age
mean(students$Age)

# Mean of Attendance
mean(students$Attendance)

# Mean of Study Hours
mean(students$StudyHours)


# PART D: Frequency Distribution

# Gender Frequency
table(students$Gender)

# Age Frequency
table(students$Age)


# PART E: Histogram of Marks

hist(students$Marks,
     main = "Distribution of Student Marks",
     xlab = "Marks",
     ylab = "Number of Students",
     col = "lightblue",
     border = "black")


# PART F: Bar Chart of Gender

barplot(table(students$Gender),
        main = "Gender Distribution",
        xlab = "Gender",
        ylab = "Number of Students",
        col = c("skyblue", "pink"))


# PART G: Box Plot of Marks

boxplot(students$Marks,
        main = "Box Plot of Marks",
        ylab = "Marks",
        col = "lightgreen")


# PART H: Study Hours vs Marks

plot(students$StudyHours,
     students$Marks,
     main = "Study Hours vs Marks",
     xlab = "Study Hours",
     ylab = "Marks",
     col = "blue",
     pch = 19)


# PART I: Attendance vs Marks

plot(students$Attendance,
     students$Marks,
     main = "Attendance vs Marks",
     xlab = "Attendance (%)",
     ylab = "Marks",
     col = "red",
     pch = 19)


# PART J: Correlation Analysis

# Correlation between Study Hours and Marks
cor(students$StudyHours, students$Marks)

# Correlation between Attendance and Marks
cor(students$Attendance, students$Marks)


# PART K: Check Missing Values

sum(is.na(students))

colSums(is.na(students))


# RESULT

cat("\nExperiment No. 6 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
cat("EDA and Data Visualization Completed Successfully\n")
