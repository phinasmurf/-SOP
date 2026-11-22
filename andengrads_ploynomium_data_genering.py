import numpy as np
import matplotlib.pyplot as plt 

#Definerer den originale funktion
a = 2 
b = 3
c = 5

def f(x):
    return a*x**2 + b*x + c

# Generer x-værdier
# Linspace parametre: https://numpy.org/devdocs//reference/generated/numpy.linspace.html
x = np.linspace(-5, 5, 30)

#Generer tilsvarende y-værdier
y_ideal = f(x)

# Tilføjelse af støj til data
noise = np.random.normal(0,3,len(x))
y_data = y_ideal + noise

#Visualiser data
plt.plot(x, y_ideal, label="Oprindelig funktion")
plt.scatter(x, y_data, color="darkred", label="Generede data")

plt.xlabel("x")
plt.ylabel("y")
plt.title("Generede data ud fra andengradspolynomie")
plt.legend()
plt.grid()
plt.show()
