#!/bin/bash
#########
# replicates with randomly selected individuals
#########
# define number of individuals to select
ind=15

# define number of Linux folder
lnr=5

#Change name with the file
### run replicates with sampling different individuals
# sample individuals of the ped file
for rep in {1..40}
do
./plink --pedmap ./minnesota2_dataset_chr_ordered_50k \
--thin-indiv-count 15 \
--dog --allow-extra-chr --chr 1-38 \
--out minnesota2_resampling_subset${ind}ind \
--export ped


#./minnesota2_resampling_subset${ind}ind 

# run gone with the file of sampled indivdiuals and rename the results file
# cd bin/GONE-master/Linux
bash ./script_GONE.sh minnesota2_resampling_subset${ind}ind
mv Output_Ne_minnesota2_resampling_subset${ind}ind  Output_Ne_minnesota2_resampling_subset${ind}ind_rep${rep}
mv OUTPUT_minnesota2_resampling_subset${ind}ind OUTPUT_minnesota2_resampling_subset${ind}ind_rep${rep}
mv Output_d2_minnesota2_resampling_subset${ind}ind Output_d2_minnesota2_resampling_subset${ind}ind_rep${rep}
#cd
done
