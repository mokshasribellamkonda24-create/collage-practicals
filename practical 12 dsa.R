
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 12
# Apply K-Means Clustering in R and
# Visualize Cluster Assignments


# PART A: Load Dataset

data(iris)

# Display First Six Records
head(iris)

# Display Dataset Structure
str(iris)


# PART B: Select Numerical Variables

iris_data <- iris[, 1:4]

# Display Selected Data
print(iris_data)


# PART C: Apply K-Means Clustering

# Set Random Seed
set.seed(123)

# Create K-Means Model
kmodel <- kmeans(
  iris_data,
  centers = 3,
  nstart = 25
)

# Display K-Means Model
print(kmodel)


# PART D: Display Cluster Sizes

cat("Cluster Sizes:\n")
print(kmodel$size)


# PART E: View Cluster Assignments

cat("Cluster Assignments:\n")
print(kmodel$cluster)

# Display First Six Cluster Assignments
head(kmodel$cluster)


# PART F: Add Cluster Information to Dataset

iris$Cluster <- as.factor(kmodel$cluster)

# Display Updated Dataset
head(iris)


# PART G: Visualize K-Means Clusters

plot(
  iris_data[, 1],
  iris_data[, 3],
  col = kmodel$cluster,
  pch = 19,
  main = "K-Means Clustering",
  xlab = "Sepal Length",
  ylab = "Petal Length"
)

# Display Cluster Centroids
points(
  kmodel$centers[, c(1, 3)],
  col = 1:3,
  pch = 8,
  cex = 2
)

# Add Legend
legend(
  "topleft",
  legend = c("Cluster 1", "Cluster 2", "Cluster 3"),
  col = 1:3,
  pch = 19
)


# PART H: Display Cluster Centers

cat("Cluster Centers:\n")
print(kmodel$centers)


# PART I: Calculate Within-Cluster Sum of Squares

cat("Within Cluster Sum of Squares:\n")
print(kmodel$tot.withinss)


# PART J: Compare Clusters with Actual Species

cat("Cluster vs Actual Species:\n")

print(table(
  Actual_Species = iris$Species,
  Cluster = iris$Cluster
))


# PART K: Final Summary

cat("\nK-MEANS CLUSTERING SUMMARY\n")

cat("Total Observations:", nrow(iris_data), "\n")

cat("Number of Clusters:",
    length(kmodel$size), "\n")

cat("Cluster Sizes:\n")
print(kmodel$size)

cat("Total Within-Cluster Sum of Squares:",
    kmodel$tot.withinss, "\n")


# RESULT

cat("\nExperiment No. 12 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
