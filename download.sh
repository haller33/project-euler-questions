#!/bin/bash


URL="https://projecteuler.net/archives;page="

MAX_PROBLEMA_ON_PAGE=50

PROBLEMS_URL="https://projecteuler.net/problem="

mkdir -p ProjectEuler

cd ProjectEuler

for i in $(seq 17); do

    PROBMS=$(curl -q $URL${i} | grep 'problem=')
    
    SIZE=$(echo ${PROBMS} | wc -l)

    QUESTIONS=$(curl -q https://projecteuler.net/archives\;page\=${i} | grep 'problem=' | awk -Fhref '{print $2}' | awk -F= '{print $3}' | cut -d'"' -f1)

    for pbm_idx in $QUESTIONS; do

	mkdir -p ${pbm_idx}

	cd ${pbm_idx}

	curl -q ${PROBLEMS_URL}${pbm_idx} -o index.html

	cd -

	sleep 1
    done

done
