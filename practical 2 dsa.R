
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# PRACTICAL NO. 2
# Import a Dataset into R, Inspect its Structure,
# Summarize Variable Types and Distributions,
# and Identify Missing Values.


# PART A: Load the Iris Dataset

data(iris)

# Display first six records
head(iris)

# Display last six records
tail(iris)


# PART B: Inspect Dataset Structure

# Display structure
str(iris)

# Display dimensions
dim(iris)

# Display column names
names(iris)

# Display dataset class
class(iris)

# Display number of rows
nrow(iris)

# Display number of columns
ncol(iris)


# PART C: Summarize Variable Types and Distributions

# Summary statistics
summary(iris)

# Display data types of all columns
sapply(iris, class)

# Frequency distribution of Species
table(iris$Species)


# PART D: Visualize Distributions

# Histogram of Sepal Length
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length",
     col = "skyblue",
     border = "black")

# Boxplot of Sepal Length
boxplot(iris$Sepal.Length,
        main = "Boxplot of Sepal Length",
        ylab = "Sepal Length",
        col = "lightgreen")

# Histogram of Petal Length
hist(iris$Petal.Length,
     main = "Histogram of Petal Length",
     xlab = "Petal Length",
     col = "orange",
     border = "black")


# PART E: Identify Missing Values

# Total missing values
sum(is.na(iris))

# Column-wise missing values
colSums(is.na(iris))

# Check missing values in each row
rowSums(is.na(iris))


# PART F: Additional Example - Titanic Dataset

# Load Titanic dataset
data(Titanic)

# Display dataset
print(Titanic)

# Display structure
str(Titanic)

# Display summary
summary(Titanic)

# Check total missing values
sum(is.na(Titanic))

# Check missing values column-wise
apply(Titanic, 1:3, function(x) sum(is.na(x)))


# RESULT

cat("\nPractical No. 2 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
