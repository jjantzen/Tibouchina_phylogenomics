#!/bin/bash

#SBATCH --job-name=treePL_ITS_v4
#SBATCH -o logs/treePL_ITS_part3.out
#SBATCH -e logs/treePL_ITS_part3.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=user@ufl.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=250mb
#SBATCH --time=01:00:00

pwd; hostname; date

module load treepl/20150305
treePL ITS_config3.txt
