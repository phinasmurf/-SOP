import numpy as np
import matplotlib.pyplot as plt

# Define function to minimize
def f(x):
    return x**2 + 4*x + 4

#Find the derivative - partial derivative here with multiple variables?
#Make automatic? 
def df(x):
    return 2*x + 4

# Implementing Gradient Descent
def gradient_descent(starting_point, learning_rate, iterations):
    x = starting_point 
    for i in range(iterations):
        x = x - learning_rate * df(x) #Update step
        print(f"Iteration {i+1}: x={x:.4f}, f(x)={f(x):.4f}")
    return x

starting_point = 0
learning_rate = 0.1
iterations = 10

minimum = gradient_descent(starting_point, learning_rate, iterations)
print(f"\n Local minimum occurs at x = {minimum:.4f}, f(x)={f(minimum):.4f}")

# Visualizing
x_vals = np.linspace(-10, 2, 100)
y_vals = f(x_vals)
plt.plot(x_vals, y_vals, label="f(x) = x^2 + 4x + 4")
plt.scatter(minimum, f(minimum), color='red', label="Local Minimum")
plt.xlabel("x")
plt.ylabel("f(x)")
plt.title("Gradient Descent Visualization")
plt.legend()
plt.show()

#Made using: https://www.geeksforgeeks.org/machine-learning/how-to-implement-a-gradient-descent-in-python-to-find-a-local-minimum/ 