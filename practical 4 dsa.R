
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 4
# Generate and Interpret Descriptive Statistics
# and Create Basic Visualizations Using R


# PART A: Load Dataset

data(iris)

# Display first six records
head(iris)


# PART B: Calculate Mean

mean_value <- mean(iris$Sepal.Length)

print(mean_value)


# PART C: Calculate Median

median_value <- median(iris$Sepal.Length)

print(median_value)


# PART D: Calculate Mode

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Calculate mode of Species
mode_value <- getmode(iris$Species)

print(mode_value)

# Calculate mode of Sepal Length
mode_length <- getmode(iris$Sepal.Length)

print(mode_length)


# PART E: Calculate Standard Deviation

sd_value <- sd(iris$Sepal.Length)

print(sd_value)


# PART F: Generate Summary Statistics

summary(iris)


# PART G: Create Histogram

hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")


# PART H: Create Scatter Plot

plot(iris$Sepal.Length,
     iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col = "blue",
     pch = 19)


# PART I: Display All Statistical Results

cat("\nDESCRIPTIVE STATISTICS\n")

cat("Mean:", mean_value, "\n")

cat("Median:", median_value, "\n")

cat("Mode of Species:", as.character(mode_value), "\n")

cat("Mode of Sepal Length:", mode_length, "\n")

cat("Standard Deviation:", sd_value, "\n")


# RESULT

cat("\nExperiment No. 4 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
