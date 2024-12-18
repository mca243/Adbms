# Load necessary library
library(class)
library(ggplot2)

# Load iris dataset
data <- iris

# Split data
set.seed(123)  #Ensures reproducibility of random processes
train_index <- sample(1:nrow(data), 0.7 * nrow(data)) #Randomly selects 70% of the row indices from the dataset for training.
train <- data[train_index, ]
test <- data[-train_index, ]

# Train KNN model
k <- 3 #Sets the number of nearest neighbors (k) to 3.
predictions <- knn(train[, -5], test[, -5], train$Species, k)

# Evaluate accuracy
accuracy <- mean(predictions == test$Species)
print(paste("Accuracy:", round(accuracy, 2)))

# Visualize predictions
test$Predicted <- predictions
ggplot(test, aes(x = Petal.Length, y = Petal.Width, color = Predicted, shape = Species)) +
  geom_point(size = 3) +
  labs(title = "KNN Classification Results", x = "Petal Length", y = "Petal Width") +
  theme_minimal()
