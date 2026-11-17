import numpy as np

# Rækker = observationer, kolonner = inputvariable
X = np.array([
    [1.0, 2.0],
    [2.0, 1.0],
    [3.0, 4.0],
])
y = np.array([5.0, 4.0, 11.0])  # observerede resultater

m, n = X.shape
w = np.zeros(n)  # én vægt per inputvariabel
b = 0.0          # konstantled
learning_rate = 0.01

for _ in range(1000):
    y_pred = X @ w + b
    error = y_pred - y

    dw = (2 / m) * (X.T @ error)
    db = (2 / m) * np.sum(error)

    w -= learning_rate * dw
    b -= learning_rate * db

mse = np.mean((X @ w + b - y) ** 2)
print("Vægte:", w, "Konstantled:", b, "MSE:", mse)