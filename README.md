**Description**

This Bash script converts all numerical data columns from nanometers (nm) to Angstroms in a GROMACS XVG file, which is a common format for reporting molecular dynamics simulation results. The script preserves all header and comment lines (lines starting with @ or #) and updates any unit labels found in those lines from "nm" to "Angstrom". For each data line, the script leaves the first column (typically time or frame number) unchanged and multiplies all subsequent data columns by 10 to convert from nm to Angstroms.

**Sample Usage**

./convert_nm_to_a.sh input.xvg output.xvg
