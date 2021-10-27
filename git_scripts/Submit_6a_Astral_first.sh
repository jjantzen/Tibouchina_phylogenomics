#!/bin/sh
#SBATCH --job-name=astral
#SBATCH --mail-type=ALL
#SBATCH --mail-user=user@ufl.edu 
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=10gb
#SBATCH --time=10:00:00
#SBATCH -o logs/ast_first.%j.log
#SBATCH -e logs/ast_first.%j.err
#SBATCH --qos=soltis-b
pwd; hostname;date

module load astral


astral -i /ufrc/soltis/jjantzen/Dissertation/Analysis/2020_analyses/Astral/rooted_gene_trees_bs50.tre -o /ufrc/soltis/jjantzen/Dissertation/Analysis/2020_analyses/Astral/rooted_sc_gene_trees_astral_bs50.tre 2> /ufrc/soltis/jjantzen/Dissertation/Analysis/2020_analyses/Astral/rooted_sc_gene_trees_astral_bs50.log 

#-a species.txt

#2> astral_red_supercontig_BS10.log compares with branches of 10% support or lower contracted 