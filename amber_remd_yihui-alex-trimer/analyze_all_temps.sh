#!/bin/bash

TEMPLIST=`cat temperatures.dat`

for T in $TEMPLIST ; do

  cpptraj YA3.prmtop <<EOF
trajin remd.mdcrd.001 remdtraj remdtrajtemp $T
trajout remd.Ttraj.$T
go
EOF

  cpptraj YA3.prmtop <<EOF
trajin remd.Ttraj.$T
distance d1 out dist.$T.dat :1@N :1@C
go
EOF

done

