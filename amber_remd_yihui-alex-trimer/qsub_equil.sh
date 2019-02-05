#!/bin/bash

#PBS -N ya3_remd_equil.pf
#PBS -o ya3_remd_equil.out
#PBS -q normal
#PBS -l nodes=1:ppn=8
#PBS -l walltime=2:00:00
#PBS

cd $PBS_O_WORKDIR
export OMP_NUM_THREADS=1

module load ambertools
module load mpi/openmpi

mpirun -np 8 $AMBERHOME/bin/sander.MPI -ng 8 -groupfile equilibrate.groupfile
