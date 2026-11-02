
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 13
# Evaluate and Interpret K-Means Clustering Results Using R


# PART A: Load Iris Dataset

data(iris)

# Display First Six Records
head(iris)

# Select Numerical Variables
iris_data <- iris[, 1:4]


# PART B: Apply K-Means Clustering

set.seed(123)

kmodel <- kmeans(
  iris_data,
  centers = 3,
  nstart = 25
)

# Display Model
print(kmodel)


# PART C: View Cluster Centers

cat("Cluster Centers:\n")
print(kmodel$centers)


# PART D: Display Cluster Sizes

cat("Cluster Sizes:\n")
print(kmodel$size)


# PART E: Calculate Within-Cluster Sum of Squares

cat("Within-Cluster Sum of Squares:\n")
print(kmodel$tot.withinss)


# PART F: Calculate Between-Cluster Sum of Squares

cat("Between-Cluster Sum of Squares:\n")
print(kmodel$betweenss)


# PART G: Apply Elbow Method

wcss <- numeric()

set.seed(123)

for (i in 1:10) {
  wcss[i] <- kmeans(
    iris_data,
    centers = i,
    nstart = 25
  )$tot.withinss
}

# Plot Elbow Graph

plot(
  1:10,
  wcss,
  type = "b",
  pch = 19,
  col = "blue",
  main = "Elbow Method",
  xlab = "Number of Clusters (K)",
  ylab = "Within-Cluster Sum of Squares (WCSS)"
)


# PART H: Interpret Cluster Characteristics

cluster_means <- aggregate(
  iris_data,
  list(Cluster = kmodel$cluster),
  mean
)

cat("Cluster Characteristics:\n")
print(cluster_means)


# PART I: Add Cluster Assignments to Dataset

iris$Cluster <- as.factor(kmodel$cluster)

# Display Updated Dataset
head(iris)


# PART J: Visualize Clusters

plot(
  iris_data$Sepal.Length,
  iris_data$Petal.Length,
  col = kmodel$cluster,
  pch = 19,
  main = "K-Means Cluster Visualization",
  xlab = "Sepal Length",
  ylab = "Petal Length"
)

# Display Cluster Centers

points(
  kmodel$centers[, c(1, 3)],
  col = 1:3,
  pch = 8,
  cex = 2
)

legend(
  "topleft",
  legend = c("Cluster 1", "Cluster 2", "Cluster 3"),
  col = 1:3,
  pch = 19
)


# PART K: Compare Actual Species and Clusters

cat("Actual Species vs Clusters:\n")

print(table(
  Species = iris$Species,
  Cluster = iris$Cluster
))


# PART L: Display Final Evaluation

cat("\nFINAL CLUSTER EVALUATION\n")

cat("Number of Clusters:", length(kmodel$size), "\n")

cat("Cluster Sizes:\n")
print(kmodel$size)

cat("Total WCSS:", kmodel$tot.withinss, "\n")

cat("Between-Cluster Sum of Squares:",
    kmodel$betweenss, "\n")

cat("Clustering Ratio:",
    kmodel$betweenss / kmodel$totss, "\n")


# RESULT

cat("\nExperiment No. 13 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
