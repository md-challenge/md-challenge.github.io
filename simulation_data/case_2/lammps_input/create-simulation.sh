#!/bin/bash

export LC_NUMERIC="en_US.UTF-8"

set -e

# First: generate the possible processor configurations
python3 generate-possible-configurations.py

# Create the bash script for maunching all simulations at once
if [ -f launch-all.sh ] 
then
    rm launch-all.sh
fi
touch  launch-all.sh
echo "#!/bin/bash" >> launch-all.sh
echo " " >> launch-all.sh

# Loop over all possible processor combinations
while read nt nx ny; 
do

    # Create the processors commands file
    if [ -f processors.lammps ] 
    then
        rm processors.lammps
    fi
    touch  processors.lammps
    echo "variable nx equal "${nx} >> processors.lammps
    echo "variable ny equal "${ny} >> processors.lammps

    # Create the folder
    folder=nt${nt}nx${nx}ny${ny}
    if [ ! -d '../'$folder ] 
    then
        mkdir '../'$folder
    fi

    # Copy the relevant files into the folder
    cp input.lammps processors.lammps topology.data '../'$folder
    
    echo "cd "$folder >> launch-all.sh
    echo "mpirun -np "${nt}" /home/simon/Softwares/lammps-2Aug2023/src/lmp_mpi -in input.lammps" >> launch-all.sh
    echo "cd .." >> launch-all.sh

done < possible_combination.dat

mv launch-all.sh ../