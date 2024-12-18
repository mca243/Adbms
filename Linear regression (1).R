install.packages("ggplot2")

# Load necessary library
library(ggplot2)

# Create a simple dataset
data <- data.frame(
  sqft = c(500, 1000, 1500, 2000, 2500),
  price = c(150000, 200000, 250000, 300000, 350000)
)

# Visualize data
ggplot(data, aes(x = sqft, y = price)) +
  geom_point(color = 'blue', size = 3) +
  geom_smooth(method = 'lm', col = 'red') +
  labs(title = "Linear Regression: Square Footage vs Price", x = "Square Footage", y = "Price")

# Build linear regression model
model <- lm(price ~ sqft, data = data)

# Model summary
summary(model)

# Predict for a new value
new_data <- data.frame(sqft = c(800))
predicted_price <- predict(model, new_data)
print(predicted_price)
