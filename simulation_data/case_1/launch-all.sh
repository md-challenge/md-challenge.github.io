#!/bin/bash
 
cd nt1nx1ny1
mpirun -np 1 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt2nx1ny2
mpirun -np 2 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt4nx1ny4
mpirun -np 4 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt4nx2ny2
mpirun -np 4 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt8nx1ny8
mpirun -np 8 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt8nx2ny4
mpirun -np 8 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt16nx1ny16
mpirun -np 16 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt16nx2ny8
mpirun -np 16 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt16nx4ny4
mpirun -np 16 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt32nx1ny32
mpirun -np 32 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt32nx2ny16
mpirun -np 32 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
cd nt32nx4ny8
mpirun -np 32 /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps
cd ..
