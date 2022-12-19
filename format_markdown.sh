#!/bin/bash

PROJ_DIR="ProjectEuler"

MD_DIR="markdown"

MAX_FILE_LINES="126"

FILE_NAME_STR="README.md"
FILE_NAME_HTML="index.html"

FILES=$(ls ${PROJ_DIR})

mkdir -p ${MD_DIR}

for i in $FILES; do
    
    LINE_FILE_MD="${MD_DIR}/${i}"

    mkdir -p ${LINE_FILE_MD}

    echo -n "# " > "${LINE_FILE_MD}/${FILE_NAME_STR}.old"
        
    links -dump "${PROJ_DIR}/${i}/${FILE_NAME_HTML}" >> "${LINE_FILE_MD}/${FILE_NAME_STR}"


    cat ${LINE_FILE_MD}/${FILE_NAME_STR} | grep -A ${MAX_FILE_LINES} "Problem ${i}" >> "${LINE_FILE_MD}/${FILE_NAME_STR}.old"

    
    # cat "${LINE_FILE_MD}/${FILE_NAME_STR}" | awk 'c&&c--;/Project Euler/{c=212}' | head -n -3 >> "${LINE_FILE_MD}/${FILE_NAME_STR}.old"

    mv "${LINE_FILE_MD}/${FILE_NAME_STR}.old" "${LINE_FILE_MD}/${FILE_NAME_STR}"

    # title=$(grep '\-\-\- Day' $file_md_path )

    # echo "${MARK_SIMBLE} $title" > ${file_md_path}.new

    
    ## to check the higer file lenght
    # cd ProjectEuler/
    # for i in $(ls); do cd $i; links -dump index.html | grep -A250 Problem | wc -l >> /home/synbian/git/clone/ProjectEuler/project-euler-questions/a.;cd - ; done
    
    # cat ${file_md_path} | awk 'c&&c--;/Day/{c=512}' | head -n -3 >> ${file_md_path}.new

    # rm ${file_md_path}
    
    # mv ${file_md_path}.new ${file_md_path}
	
done


	  
