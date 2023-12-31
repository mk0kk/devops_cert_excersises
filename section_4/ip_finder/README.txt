 _____  _____      _______ _____ __   _ ______  _______  ______
   |   |_____] ___ |______   |   | \  | |     \ |______ |_____/
 __|__ |           |       __|__ |  \_| |_____/ |______ |    \_
         
 NAME

      ip-finder

 EXERCISE

      6. Create a local BASH script to find all the IP addresses from a log file and save
      them to another file.  

 SYNOPSIS

      ./ip-finder.sh [-i|--input-file] [INPUT FILEPATH] [-o|--output-file] [OUTPUT FILEPATH]

 DESCRIPTION

      Find all unique IP addresses from an input file and save the results to an output file.
      The options "-i" and "-o", along with their respective long options are mandatory.
      Mandatory arguments to short options are mandatory for long options too.
      The file Linux_2k.log can be used as a dummy input file to test the script.

 OPTIONS

      -i INPUT_FILE, --input-file
            Read the contents of INPUT_FILE and extract the unique IP addresses. INPUT_FILE 
            can be referenced by its full or by its relative path.

      -o OUTPUT_FILE, --output-file
            Output all the unique IP addresses that were found on INPUT_FILE to the 
            OUTPUT_FILE.
            OUTPUT_FILE can be referenced by its full or by its relative path.

      -h, --help
            Display the current manual page

 EXAMPLES
      The example below shows the "input_file.txt" been read, outputting the unique IP 
      addresses to the file "output_file.txt".

            ./ip-finder.sh -i /path/to/your/input_file.txt -o /path/to/your/output_file.txt

 AUTHOR
      Written by Michael Kokkos. Follow me on Github: https://github.com/mk0kk
      The file Linux_2k.log was taken from loghub. https://github.com/logpai/loghub 