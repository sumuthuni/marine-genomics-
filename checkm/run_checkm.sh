#!/bin/bash
#SBATCH --time=60
#SBATCH --ntasks=4 --mem=40gb

echo "Starting checkm in $(pwd) at $(date)"

shopt -s expand_aliases
alias checkm='apptainer run -B /pvol/:/pvol /pvol/data/sif/checkm.sif checkm'

checkm lineage_wf bins out -t 4 -x fa -f checkm_results.txt

echo "Finished checkm in $(pwd) at $(date)"

