#!/bin/bash

#SBATCH --job-name=treePL_ITS_part2
#SBATCH -o logs/treePL_ITS_part2.%A.out
#SBATCH -e logs/treePL_ITS_part2.%A.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jjantzen@ufl.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=250mb
#SBATCH --time=04:00:00

pwd; hostname; date

module load treepl/20150305
treePL ITS_config2.txt
