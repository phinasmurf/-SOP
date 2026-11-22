import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from pathlib import Path

# Rækker = observationer, kolonner = inputvariable
X = np.array([
    [1.0, 2.0],
    [2.0, 1.0],
    [3.0, 4.0],
])
y = np.array([5.0, 4.0, 11.0])  # observerede resultater

# Parametre jeg lan skrue på i gradient descent
learning_rate = 0.01
iterations = 1000

def gradient_descent(X, y, learning_rate=0.001, iterations=1000):
    #Sørger for dataene we NumPy-arrays
    X = np.array(X, dtype=float)
    y = np.array(y, dtype=float).flatten()

    # Antal observationer og inputvariable
    m, n = X.shape

    # Startværdier
    w = np.zeros(n)  # én vægt per inputvariabel
    b = 0.0          # konstantled

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
    print("Kvadratsumsafvigelsen:", cost_history[-1])

    # Tegn tabsfunktionens udvikling
    plt.plot(cost_history)
    plt.xlabel("Iterationer")
    plt.ylabel("Kvadratsum")
    plt.title("Gradient descent")
    plt.show()

    return w, b, cost_history

data = pd.read_csv(Path(__file__).with_name("data.csv"))
X = data[["x1", "x2"]].to_numpy(dtype=float)
y = data["y"].to_numpy(dtype=float)

w, b, cost = gradient_descent(
    X, y, 
    learning_rate = 0.001,
    iterations=1000
)