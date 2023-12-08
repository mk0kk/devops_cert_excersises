#!/bin/bash

IP_ADDR_EXPRESSION="[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}"

INPUT_FLAG=$1
INPUT_FILEPATH=$2

OUTPUT_FLAG=$3
OUTPUT_FILEPATH=$4

INPUT_FLAG_RAISED=false
OUTPUT_FLAG_RAISED=false
HELP_FLAG_RAISED=false

RED='\033[0;31m'
NC='\033[0m'

main() {
    check_input_flag "$INPUT_FLAG"
    check_output_flag "$OUTPUT_FLAG"
    check_help_flag "$INPUT_FLAG" 

    if [ "$HELP_FLAG_RAISED" == true ]; then
        less README.txt
    fi

    if [ "$INPUT_FLAG_RAISED" == false ] || [ "$OUTPUT_FLAG_RAISED" == false ]; then
        echo -e "${RED}ERROR: Input or output options are missing/wrong.${NC}\nRefer to documentation by providing the "-h" or "--help" option:\n\nuser@computer:~$ ./ip-finder.sh --help\n"
    else
        find_and_export_ip_addr "$IP_ADDR_EXPRESSION" "$INPUT_FILEPATH" "$OUTPUT_FILEPATH"
    fi
}

find_and_export_ip_addr(){
    grep -o --text "$1" "$2" | sort | uniq > $3
}

check_help_flag(){
    if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
        HELP_FLAG_RAISED=true
    else
        HELP_FLAG_RAISED=false
    fi    
}

check_input_flag(){
    if [ "$1" == "--input-file" ] || [ "$1" == "-i" ]; then
        INPUT_FLAG_RAISED=true
    else
        INPUT_FLAG_RAISED=false
    fi
}

check_output_flag(){
    if [ "$1" == "--output-file" ] || [ "$1" == "-o" ]; then
        OUTPUT_FLAG_RAISED=true
    else
        OUTPUT_FLAG_RAISED=false
    fi
}

main "$@"

