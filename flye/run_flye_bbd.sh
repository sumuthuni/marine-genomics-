#!/bin/bash
#SBATCH --time=720
#SBATCH --ntasks=12 --mem=10gb

echo "Starting flye bbd in $(pwd) at $(date)"

flye --nano-hq ../raw_data/bbd_0.1.fastq.gz --threads 12 --out-dir bbd --meta

echo "Finished flye bbd in $(pwd) at $(date)"