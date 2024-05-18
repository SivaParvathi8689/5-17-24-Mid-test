#Sivaparvathi Yanikapati
# Load necessary libraries
library(ggplot2)

# Linear regression
linear_model <- lm(mpg ~ wt, data = mtcars)

# Visualization
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, col = "red") +
  labs(title = "Linear Regression: MPG vs Weight",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon")


# Load necessary libraries
library(ggplot2)

# Polynomial regression
poly_model <- lm(mpg ~ poly(wt, 2), data = mtcars)

# Visualization
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, col = "red") +
  labs(title = "Polynomial Regression: MPG vs Weight",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon")


# Load necessary libraries
library(ggplot2)

# Logistic regression
logistic_model <- glm(vs ~ wt, data = mtcars, family = "binomial")

# Visualization
ggplot(mtcars, aes(x = wt, y = as.numeric(vs))) +
  geom_point() +
  stat_function(fun = function(x) 1 / (1 + exp(-logistic_model$coefficients[1] - logistic_model$coefficients[2] * x)), aes(color = "Logistic Regression")) +
  labs(title = "Logistic Regression: MPG vs Weight",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon",
       color = "Prediction")