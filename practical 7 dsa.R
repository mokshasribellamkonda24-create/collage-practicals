
# Name: Mokshasri Bellamkonda
# Roll No: 04
# Div: B

# EXPERIMENT NO. 7
# Apply Statistical Tests (t-test, ANOVA, Correlation) in R


# PART A: Create Students Performance Dataset

students <- data.frame(
  Gender = c("Female", "Male", "Female", "Male",
             "Female", "Male", "Female", "Male",
             "Female", "Male", "Female", "Male"),
  
  MathScore = c(72, 68, 85, 75, 91, 66,
                78, 70, 88, 62, 95, 73),
  
  ReadingScore = c(74, 65, 90, 72, 89, 64,
                   82, 68, 85, 60, 92, 70),
  
  WritingScore = c(70, 64, 88, 70, 92, 61,
                   80, 65, 87, 58, 94, 68)
)

# Display Students Dataset
print(students)
head(students)


# PART B: Independent t-test

# Compare Math Scores of Male and Female Students

t_test_result <- t.test(
  MathScore ~ Gender,
  data = students
)

# Display t-test result
print(t_test_result)

# Interpretation
if (t_test_result$p.value < 0.05) {
  print("Significant difference between Male and Female students.")
} else {
  print("No significant difference between Male and Female students.")
}


# PART C: Create Retail Sales Dataset

retail <- data.frame(
  Sales = c(1200, 1500, 1800, 1000, 1300, 1600,
            2000, 2200, 2500, 1100, 1400, 2300),
  
  Profit = c(200, 250, 300, 150, 190, 240,
             350, 400, 450, 170, 220, 420),
  
  Category = c("Electronics", "Electronics", "Electronics",
               "Clothing", "Clothing", "Clothing",
               "Furniture", "Furniture", "Furniture",
               "Clothing", "Electronics", "Furniture"),
  
  Region = c("North", "South", "East", "North",
             "South", "East", "North", "South",
             "East", "West", "West", "West")
)

# Display Retail Dataset
print(retail)
head(retail)


# PART D: Perform One-Way ANOVA

# Compare Sales Across Categories

anova_result <- aov(
  Sales ~ Category,
  data = retail
)

# Display ANOVA result
summary(anova_result)

# Interpretation
anova_pvalue <- summary(anova_result)[[1]][["Pr(>F)"]][1]

if (anova_pvalue < 0.05) {
  print("Significant difference in sales among product categories.")
} else {
  print("No significant difference in sales among product categories.")
}


# PART E: Create CO2 Emissions Dataset

co2 <- data.frame(
  EngineSize = c(1.2, 1.4, 1.6, 1.8, 2.0, 2.2,
                 2.4, 2.6, 2.8, 3.0, 3.2, 3.5),
  
  FuelConsumption = c(5.5, 6.0, 6.5, 7.0, 7.5, 8.0,
                      8.5, 9.0, 9.5, 10.0, 10.5, 11.0),
  
  CO2Emissions = c(120, 130, 140, 155, 170, 185,
                   200, 215, 230, 250, 270, 290)
)

# Display CO2 Dataset
print(co2)
head(co2)


# PART F: Correlation Analysis

# Relationship Between Engine Size and CO2 Emissions

correlation1 <- cor(
  co2$EngineSize,
  co2$CO2Emissions
)

print(correlation1)

# Perform Correlation Test
cor_test1 <- cor.test(
  co2$EngineSize,
  co2$CO2Emissions
)

print(cor_test1)


# PART G: Correlation Between Sales and Profit

correlation2 <- cor(
  retail$Sales,
  retail$Profit
)

print(correlation2)

# Perform Correlation Test
cor_test2 <- cor.test(
  retail$Sales,
  retail$Profit
)

print(cor_test2)


# PART H: Correlation Between Reading and Writing Scores

correlation3 <- cor(
  students$ReadingScore,
  students$WritingScore
)

print(correlation3)

# Perform Correlation Test
cor_test3 <- cor.test(
  students$ReadingScore,
  students$WritingScore
)

print(cor_test3)


# PART I: Display Final Results

cat("\nSTATISTICAL TEST RESULTS\n")

cat("T-test p-value:", t_test_result$p.value, "\n")

cat("ANOVA p-value:", anova_pvalue, "\n")

cat("Engine Size and CO2 Correlation:", correlation1, "\n")

cat("Sales and Profit Correlation:", correlation2, "\n")

cat("Reading and Writing Correlation:", correlation3, "\n")


# RESULT

cat("\nExperiment No. 7 Completed Successfully\n")
cat("Name: Mokshasri Bellamkonda\n")
cat("Roll No: 04\n")
cat("Division: B\n")
