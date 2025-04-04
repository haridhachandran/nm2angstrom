#!/bin/bash
# Convert nm to Angstrom in XVG file
# Usage: ./convert_nm_to_a.sh input.xvg output.xvg
#hello
input=$1
output=$2

# Process the file line by line
awk '{
    # Copy comment and header lines unchanged
    if ($0 ~ /^[@#]/) {
        # Update unit in the axis label if present
        gsub("nm", "Angstrom");
        print;
    } else {
        # Keep first column (time/frame) unchanged
        printf "%s", $1;
        # Convert other columns from nm to Angstrom
        for (i=2; i<=NF; i++) {
            printf " %f", $i * 10;
        }
        printf "\n";
    }
}' "$input" > "$output"
