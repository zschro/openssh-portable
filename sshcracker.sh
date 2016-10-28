#!/bin/bash
while true
do
./ssh_modified5 -t -T -l$1 $2
rc=$?;
if [[ $rc == 0 ]]; then exit $rc; fi
echo Respawn due to login grace time...
done
