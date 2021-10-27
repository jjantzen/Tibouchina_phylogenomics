#!/bin/bash

#SBATCH --job-name=treePL_ITS_part1
#SBATCH -o logs/treePL_ITS_part1.%A.out
#SBATCH -e logs/treePL_ITS_part1.%A.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=user@ufl.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=100mb
#SBATCH --time=00:10:00

pwd; hostname; date

module load treepl/20150305
treePL ITS_config1.txt
