#!/bin/bash
#OAR -n scaling-test
#OAR -l /core=4,walltime=00:10:00
#OAR --stdout log.out
#OAR --stderr log.err

mpirun -np 4 /home/gravells/softwares/lammps-8Feb2023/src/lmp_mpi -in input.lammps
