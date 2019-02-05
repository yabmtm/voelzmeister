#!/bin/csh

module load ambertools

set i = "1"
while ($i < 9)
set ext=`printf "%3.3i" $i`

cpptraj YA3.prmtop << EOF
trajin remd.mdcrd.$ext
trajout remd.reptraj.$ext nobox

distance d1 out dist.rep.$ext :1@CA :1@CB

go

EOF

  @ i++
end
wait

