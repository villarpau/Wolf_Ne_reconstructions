#!/bin/bash
plink=/home/laia/software/plink2

# subsample wolf file to have a smaller file
../plink2 --pedmap /home/laia/software/Minnesota2/all_chr_ordered_minnesota2 \
--thin-count 50000 \
--write-snplist \
--dog --allow-extra-chr --chr 1-38 \
--export ped \
--out /home/laia/software/Minnesota2/minnesota2_dataset_chr_ordered_50k
