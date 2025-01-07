#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/adi/repo/notes/sem3/ELD_A+_project/ELD_project/solution1/.autopilot/db/a.g.bc ${1+"$@"}
