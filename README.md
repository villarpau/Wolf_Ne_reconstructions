# Comparing genetic Ne reconstructions over time with long-time wolf monitoring data in two populations

This project its intended to perform some analysis to test the functionality of GONE software in especific situations
see https://github.com/esrud/GONE




## Authors

- [@villarpau](https://github.com/villarpau)
- [@lperezsorribes](https://github.com/lperezsorribes)



## Usage/Examples

This repository is intended to sum up all the scripts used on the project so it's explained step by step:

### Data preparation
In this study we used two different datasets one regarding Minnesota wolves and the other regarding Scandinavian wolves this data need some preparation before being able to run GONE, so it's important to take the next steps if it's necessary for your data.

### PED and map Generation
#### Minnesota
##### Ped File Generation
Data from Minnesota comes from [doi_10.5061_dryad.284tf__v1](https://datadryad.org/stash/dataset/doi:10.5061/dryad.9tb07) this data is not compatible with GONE as a .ped file input, so it's used the script [PEDconv.py](https://github.com/villarpau/Ne_Reconstructions_Analysis/blob/main/AuxiliarScripts/PEDconv.py) on the folder [AuxiliarScripts](https://github.com/villarpau/Ne_Reconstructions_Analysis/tree/main/AuxiliarScripts)

##### Map File Generation
On the same way, to prepare the map file, as the data we got needed to be converted to a map file too, it was created a script called [MAPconv.py](https://github.com/villarpau/Ne_Reconstructions_Analysis/blob/main/AuxiliarScripts/MAPconv.py) that you can find in the folder [AuxiliarScripts](https://github.com/villarpau/Ne_Reconstructions_Analysis/tree/main/AuxiliarScripts) to convert the data from the snps of the data_123801SNP.csv file that we got from [Medrano, et al. (2014)](https://datadryad.org/stash/dataset/doi:10.5061/dryad.284tf) using the [caninehd_b](https://support.illumina.com/downloads/caninehd_product_files.html) dataset, we converted the file to create a usable .map file.

#### Scandinavia
On the other side the data from Scandinavia was already on .ped and .map format so it's no necessary to take this step.

### Plink sorting
#### Minnesota and Scandinavia
To sort the chromosomes by it's number (which is necessary for the data ingest in GONE) it's used the [Minnesota_1_script_sorting.sh](https://github.com/villarpau/Ne_Reconstructions_Analysis/blob/main/ExecutionScripts/Minnesota_1_script_sorting.sh) further description of the file on it's folder: [Executionscripts](https://github.com/villarpau/Ne_Reconstructions_Analysis/tree/main/ExecutionScripts)

### Plink subset
#### Minnesota and Scandinavia
After that process it's requiered to limit the number of snps to 50k as GONE use that number on it's execution, in order to do that the script run it's [Minnesota_2_filtering_gone_50kSNP.sh](https://github.com/villarpau/Ne_Reconstructions_Analysis/blob/main/ExecutionScripts/Minnesota_2_filtering_gone_50kSNP.sh) that you can find in [Executionscripts](https://github.com/villarpau/Ne_Reconstructions_Analysis/tree/main/ExecutionScripts) also more information is provided on that folder readme.

### Plink combinations
#### Minnesota and Scandinavia
On the final step that include the execution of GONE on 40 repetitions it's the script_subsets.sh, this script uses plink to generate subsets of less individuals in order to create the permutations necessary to run GONE 40 times with different combination of individuals, to choose the number if individuals it's used the binomial coefficient to calculate the number of possible combinations to reach at least 40 possible combinations.
You can find this script on [Executionscripts](https://github.com/villarpau/Ne_Reconstructions_Analysis/tree/main/ExecutionScripts) also more information is provided on that folder readme.
This script it's also necessary to be modified to be compatible with different data sources.

### Data analysis
#### Minnesota
On Minnesota there is an analysis made on Jupyter notebook, that it's commented and explained on every step made. It's file is called Minnesota_analysis.ipynb and it's located in the folder [AnalysisScripts](https://github.com/villarpau/Ne_Reconstructions_Analysis/tree/main/AnalysisScripts).

#### Scandinavia
Also in Scandinavia there is an analysis made on a Jupyter notebook, in this analysis are used two datasets one with immigrants and the other one without them, this is ploted on a same graph so its convenient to process both of them in the same script. The file is located in the folder [AnalysisScripts](https://github.com/villarpau/Ne_Reconstructions_Analysis/tree/main/AnalysisScripts) as Scandinavia_analysis.ipynb inside the file you can find further explanation.


### Files 
You can find the ped and map used on gone on the folder [PED_and_MAP_FILES](https://github.com/villarpau/Ne_Reconstructions_Analysis/tree/main/PED_and_MAP_FILES) these are the ones that are alread filtered with the plink scripts on the execution scripts. Also, in the same folder there are the ped and map files generated for Minnesota with the Auxiliar scripts.









## Run requeriments
This project is intended to be used with a linux machine, all the previous and post GONE execution could be executed on a normal desktop/laptop with enough computation power. In order to run GONE it's usual to not be able to run in a normal laptop/desktop it's irrelevant it's power, it will just not Run. We recommend to use a a cluster available on your research group, or use a cloud computation service, with docker available to run the program.

To run the auxiliar scripts it's requiered [Python](https://www.python.org/)>3.9 and the library pandas.

To run the pre-execution scripts it's requiered to have [plink](https://www.cog-genomics.org/plink/1.9/) and [plink2](https://www.cog-genomics.org/plink/2.0/) in your computer

To run the analysis scripts it's requiered to use [Jupyter notebook](https://jupyter.org/) and [Python](https://www.python.org/)>3.9, also it's requiered to use the following libraries:
[matplotlib](https://matplotlib.org/), [seaborn](https://seaborn.pydata.org/), [pandas](https://pandas.pydata.org/), [scipy](https://scipy.org/).
You can install using the following line

Anaconda
```bash
conda install pandas scipy seaborn matplotlib
```

pip
```bash
pip install pandas scipy seaborn matplotlib
```
