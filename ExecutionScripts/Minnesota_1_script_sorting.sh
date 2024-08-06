#!/bin/bash
plink2=/home/laia/software/plik2
plink=/home/laia/software/plink
# Divide the plink file (this will give you chr1.bed, chr1.bim, chr1.fam, chr2.bed, chr2.bim etc)
 
for i in {1..38}
do
../plink2 --pedmap ./linked_minnesota_data2 --chr $i --chr-set 38 --make-bed --out chr$i
done


# Make a list of all chromosomes (make sure there is no file called chrlist.txt before you run this)
for i in {1..38}
do
echo chr$i >> chrlist.txt
done
 

# Merge

../plink --merge-list ./chrlist.txt --chr-set 38 --export ped --out all_chr_ordered_minnesota2
