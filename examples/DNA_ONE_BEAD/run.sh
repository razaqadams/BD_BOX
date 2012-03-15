#! /bin/bash

set -u

# Wi=240
vellist="0.0"
nbeads="1"
klist="0.0"

for vel in ${vellist}; do
    for k in ${klist}; do
	for ip in $(seq 1 8); do
            echo ${ip}
            echo ${vel}
	    echo ${k}
	done
    done 
done| parallel -j 8 -N3 ./runone.sh ${nbeads} {1} {2} {3}
