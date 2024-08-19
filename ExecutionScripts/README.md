
# Pre-Execution Scripts

This scripts are used before the execution of GONE to generate the map files

The order of execution of these scripts are:

## 1 Chromosome sorting:

First it should be run: [Minnesota_1_script_sorting.sh](https://github.com/villarpau/Wolf_Ne_reconstructions/tree/main/ExecutionScripts/Minnesota_1_script_sorting.sh)
This script uses plink to sort the chromosomes because they need to be sorted to run correctly in GONE

## 2 50000snp filtering

The second script called: [Minnesota_2_filtering_gone_50kSNP.sh](https://github.com/villarpau/Wolf_Ne_reconstructions/tree/main/ExecutionScripts/Minnesota_2_filtering_gone_50kSNP.sh) it's used to filter to 50k snps to prepare the data to run

## 3 Replicate generation

On the third script, called [Minnesota_3_script_subsets.sh](https://github.com/villarpau/Wolf_Ne_reconstructions/tree/main/ExecutionScripts/Minnesota_3_script_subsets.sh) combinations of individuals are created. Using the binomial distribution it's been calculated how many individuals of the sample should be removed to create combinations enough to generate 40 repetitions different between them. 










