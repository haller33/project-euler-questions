#!/bin/bash

PROJ_DIR="ProjectEuler"

MD_DIR="org-mode"

MAX_FILE_LINES="126"

FILE_NAME_STR="README.org"
FILE_NAME_HTML="index.html"
SIMBOL="*"

FILES=$(ls ${PROJ_DIR})

mkdir -p ${MD_DIR}

for i in $FILES; do
    
    LINE_FILE_MD="${MD_DIR}/${i}"

    mkdir -p ${LINE_FILE_MD}

    echo -n "${SIMBOL} " > "${LINE_FILE_MD}/${FILE_NAME_STR}.old"
        
    links -dump "${PROJ_DIR}/${i}/${FILE_NAME_HTML}" >> "${LINE_FILE_MD}/${FILE_NAME_STR}"


    cat ${LINE_FILE_MD}/${FILE_NAME_STR} | grep -A ${MAX_FILE_LINES} "Problem ${i}" >> "${LINE_FILE_MD}/${FILE_NAME_STR}.old"

    ## to check the higer file lenght
    # cd ProjectEuler/
    # for i in $(ls); do cd $i; links -dump index.html | grep -A250 Problem | wc -l >> /home/synbian/git/clone/ProjectEuler/project-euler-questions/a.;cd - ; done
    
    mv "${LINE_FILE_MD}/${FILE_NAME_STR}.old" "${LINE_FILE_MD}/${FILE_NAME_STR}"
    
done


	  
