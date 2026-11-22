import numpy as np
import matplotlib.pyplot as plt

# Rækker = observationer, kolonner = inputvariable
X = np.array([
    [1.0, 2.0],
    [2.0, 1.0],
    [3.0, 4.0],
])
y = np.array([5.0, 4.0, 11.0])  # observerede resultater

# Antal observationer og inputvariable
m, n = X.shape

# Startværdier
w = np.zeros(n)  # én vægt per inputvariabel
b = 0.0          # konstantled

# Parametre jeg lan skrue på i gradient descent
learning_rate = 0.01
iterations = 1000

cost_history = []



for _ in range(iterations):
    # Beregn modellens forudsigelser
    y_pred = X @ w + b

    # Beregn afvigelsen
    error = y_pred - y

    # Beregn den partielle afledte af kvadratsum
    dw = 2 * (X.T @ error)
    db = 2 * np.sum(error)

    # Opdater parametrene
    w -= learning_rate * dw
    b -= learning_rate * db

    # Beregn tabsfunktion en efter opdateringen mht mindste kvadraters metode
    sum_squared_errors = np.sum((X @ w + b - y) ** 2)
    cost_history.append(sum_squared_errors)

print("Vægte:", w)
print("Konstantled:", b)
print("MSE:", cost_history[-1])

#mse = np.mean((X @ w + b - y) ** 2)
#print("Vægte:", w, "Konstantled:", b, "MSE:", mse)

# Tegn tabsfunktionens udvikling
plt.plot(cost_history)
plt.xlabel("Iterationer")
plt.ylabel("Kvadratsum")
plt.title("Gradient descent")
plt.show()