#!/bin/bash
#SBATCH --time=05:15:00             # Time limit for the job (REQUIRED).
#SBATCH --job-name=new_since_2019      # Job name
#SBATCH --ntasks=1                  # Number of cores for the job. Same as SBATCH -n 1
#SBATCH --mem=100G                  # Total memory requested
#SBATCH --partition=normal          # Partition/queue to run the job in. (REQUIRED)
#SBATCH -e slurm-%j.err             # Error file for this job.
#SBATCH -o slurm-%j.out             # Output file for this job.
#SBATCH -A cca_mteb223_uksr         # Project allocation account name (REQUIRED)

singularity exec /project/mteb223_uksr/singularity_files/pathway_analysis_2023_10_30.sif Rscript 02a_create_combined_relative_expr_table.R
