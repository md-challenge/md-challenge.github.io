#!/bin/bash

export LC_NUMERIC="en_US.UTF-8"

set -e

python3 generate-data.py

if [ -f launch-all.sh ] 
then
    rm launch-all.sh
fi
touch  launch-all.sh
echo "#!/bin/bash" >> launch-all.sh
echo " " >> launch-all.sh


while read nt nx ny; 
do

    if [ -f slurm.sh ] 
    then
        rm slurm.sh
    fi
    touch  slurm.sh
    echo "#!/bin/bash" >> slurm.sh
    echo "#OAR -n scaling-test" >> slurm.sh
    #echo "#OAR -l /nodes=1/cpu=1/core="${nt}",walltime=00:10:00" >> slurm.sh
    echo "#OAR -l /core="${nt}",walltime=00:10:00" >> slurm.sh
    echo "#OAR --stdout log.out" >> slurm.sh
    echo "#OAR --stderr log.err" >> slurm.sh
    echo "" >> slurm.sh
    echo "mpirun -np "${nt}" /home/gravells/softwares/lammps-8Feb2023/src/lmp_mpi -in input.lammps" >> slurm.sh
    chmod +x slurm.sh

    if [ -f processors.lammps ] 
    then
        rm processors.lammps
    fi
    touch  processors.lammps
    echo "variable nx equal "${nx} >> processors.lammps
    echo "variable ny equal "${ny} >> processors.lammps

    folder=nt${nt}nx${nx}ny${ny}
    if [ ! -d $folder ] 
    then
        mkdir $folder
    fi

    cp slurm.sh input.lammps processors.lammps topology.data $folder
    scp -r $folder gravells@cargo.univ-grenoble-alpes.fr:/bettik/gravells/2D-LennardJones-N400/
    
    echo "cd "$folder >> launch-all.sh
    echo "oarsub -S ./slurm.sh --project tamtam" >> launch-all.sh
    echo "cd .." >> launch-all.sh

done < possible_combination.dat

scp ./launch-all.sh gravells@cargo.univ-grenoble-alpes.fr:/bettik/gravells/2D-LennardJones-N400/