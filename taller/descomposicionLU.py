#Para ejecutar el codigo, descargar las librerias
#numpy = pip install numpy
#scipy = pip install scipy
from scipy.linalg import lu_factor
import numpy as np

def crearMatriz(n, m):
    matriz = np.zeros((n, m))

    print("Ingresa los datos de la matriz")

    for i in range(n):
        for j in range(n):
            x = float(input("Ingrese ({},{}): ".format(i, j)))
            matriz[i][j] = x
        
    return matriz

def descomposicionLU():
    n = int(input("Ingrese el tamaño de la matriz: "))
    a = crearMatriz(n, n)
    lu, piv = lu_factor(a)
    print("solucion: ", piv)

descomposicionLU()