#! /bin/bash

np=8
#seq 1 8 | parallel -j ${np} ./runone.sh {} 20
#seq 1 8 | parallel -j ${np} ./runone.sh {} 40
#seq 1 8 | parallel -j ${np} ./runone.sh {} 80
#seq 1 8 | parallel -j ${np} ./runone.sh {} 160
cat k.in | parallel -j ${np} ./runone.sh {} 1e-5
