import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, np.pi * 2,1000)
y = np.sin(x)

plt.plot(x, y)
plt.show()
