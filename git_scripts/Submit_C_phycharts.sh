#!/bin/bash
#SBATCH --job-name=phypar
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jjantzen@ufl.edu 
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=1gb
#SBATCH --time=20:00:00
#SBATCH --output=logs/phypart.%j.out
#SBATCH --error=logs/phyparts.%j.err
#SBATCH --qos=soltis-b
date;hostname;pwd

module load java

export _JAVA_OPTIONS="-Xmx22g"

java -XX:-UseGCOverheadLimit -jar /ufrc/soltis/jjantzen/Dissertation/Analysis/Astral/phyparts/target/phyparts-0.0.1-SNAPSHOT-jar-with-dependencies.jar -a 1 -v -d Rooted_trees/BS_50/ -m rooted_sc_gene_trees_astral_bs50.tre -o phyparts_out

date



#--qos=soltis-b

# -s 49