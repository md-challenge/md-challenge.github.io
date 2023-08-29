#!/bin/python
# list all possible combinations of processors

import numpy as np

possible_combination = []
possible_numbers = [1, 2, 4, 8, 16, 32, 64]
for nt in possible_numbers:
    for nx in np.arange(1,nt+1):
        ny = nt//nx
        if (nx in possible_numbers) & (ny in possible_numbers):
            if nx <= ny:
                possible_combination.append([nt, nx, ny])	
possible_combination = np.array(possible_combination)
np.savetxt("possible_combination.dat", possible_combination, fmt='%i')