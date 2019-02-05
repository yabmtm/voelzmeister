#!/bin/bash

./setup_equilibrate.sh
qsub qsub_equil.sh

# wait for job completion

./setup_remd.sh
qsub qsub_remd.sh


# wait for job completion

#./create_replica_trajs.sh
./create_temp_trajs.sh
