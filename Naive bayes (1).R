# Load necessary library
library(e1071)
library(ggplot2)

# Create da0aset
data <- data.frame(
  color = c('Red', 'Red', 'Orange', 'Red', 'Orange', 'Orange', 'Red', 'Orange'),
  size = c('Big', 'Small', 'Big', 'Big', 'Small', 'Small', 'Big', 'Big'),
  label = c('Apple', 'Apple', 'Orange', 'Apple', 'Orange', 'Orange', 'Apple', 'Orange')
)
data$color <- as.factor(data$color)
data$size <- as.factor(data$size)
data$label <- as.factor(data$label)
typeof(data$color)
# Split data into training and testing
train <- data[1:8, ]
test <- data.frame(
  color = as.factor('Orange'), # Manually define test data
  size = as.factor('Small')
)
# Train Naïve Bayes model
model <- naiveBayes(label ~ color + size, data = train)

# Predict on test data
prediction <- predict(model, test)
print(test)
print(prediction)



