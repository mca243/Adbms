# Load necessary library
library(rpart)
library(rpart.plot)
library(ggplot2)

# Create dataset 
data <- data.frame(
  Age = c('Young', 'Young', 'Middle', 'Senior', 'Senior'),
  Income = c('High', 'Low', 'High', 'Medium', 'Medium'),
  Buys = c('No', 'Yes', 'Yes', 'No', 'Yes')
)

# Convert to factors
data$Age <- as.factor(data$Age)
data$Income <- as.factor(data$Income)
data$Buys <- as.factor(data$Buys)

# Train ID3 decision tree
model <- rpart(Buys ~ Age + Income, data = data, method = "class")

# Visualize the tree
rpart.plot(model, type = 4, extra = 104, main = "Decision Tree")

# Predict on a new data point
new_data <- data.frame(Age = 'Young', Income = 'Medium')
prediction <- predict(model, new_data, type = "class")
print(prediction)

# Visualize distribution of decisions
prediction_prob <- predict(model, new_data, type = "prob")
barplot(prediction_prob, col = c("red", "green"),
        legend.text = colnames(prediction_prob),
        main = "Prediction Probabilities",
        xlab = "Class", ylab = "Probability")
