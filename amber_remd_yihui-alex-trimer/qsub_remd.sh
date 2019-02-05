#!/bin/bash

#PBS -N ya3_remd_prod.pf
#PBS -o ya3_remd_prod.out
#PBS -q normal
#PBS -l nodes=1:ppn=24
#PBS -l walltime=24:00:00
#PBS

cd $PBS_O_WORKDIR
export OMP_NUM_THREADS=1

module load ambertools
module load mpi/openmpi

mpirun -np 24 $AMBERHOME/bin/sander.MPI -ng 8 -groupfile remd.groupfile
