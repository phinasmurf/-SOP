import numpy as np
import matplotlib.pyplot as plt 
from pathlib import Path
import pandas as pd

#Definerer de originale parametre 
a = 6
b = 2
c = 6

#Indstillinger
n = 100
noise_std = 10

#Generer inputdata for x værdierne 
x_1 = np.random.uniform(-5, 5, n)
x_2 = np.random.uniform(-5, 5, n)

#Ideel y-værdi
y_ideal = a*x_1+b*x_2+c

#-----------------Støj genering---------------
noise =  np.random.normal(0, noise_std, n)
y_data = y_ideal + noise

# Pakker data til algoritmen
X = np.column_stack((x_1, x_2))

#Gemmer data til csv fil som GD_milti kan læse
pd.DataFrame({
    "x1":x_1,
    "x2":x_2,
    "y": y_data
}).to_csv(Path(__file__).with_name("data.csv"), index=False)


#Visualiser data

plt.scatter(range(n), y_ideal, label="Ideelle værdier")
plt.scatter(range(n), y_data, label="Data med støj")
plt.xlabel("Observation")
plt.ylabel("y")
plt.legend()
plt.show()


#Visualiser den oprindelige funktion
#plt.plot(X, y_ideal, label="Oprindelig funktion")
#plt.scatter(X, y_data, color="red", label="Generede data")
#
#plt.xlabel("x")
#plt.ylabel("y")
#plt.title("Generede data ud fra andengradspolynomie")
#plt.legend()
#plt.grid()
#plt.show()
