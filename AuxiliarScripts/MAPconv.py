import pandas as pd


#File Names
csvfile="data_123801SNP.csv"
output_file="outf.map"
gen_snpDB="caninehd_b.csv"

#cap=pd.read_csv(csvfile,nrows=0,dtype=str)


#File opening
df=pd.read_csv(gen_snpDB,dtype=str)
filen=open(csvfile,"r")
outf=open(output_file,"w",newline='\n')#The newline it's used to make it compatible with linux

#We use pandas for the gnsnpDB to work with it later
df=df.set_index('Name')

#Iterable writing MAP FILE
header=next(filen)
header=header[:-1]
header=header.split(",")
for snp in header[2:]:
    
    chromosome=df.loc[snp]['Chr']
    idsnip=snp
    geneticdistance=0
    basepairposition=df.loc[snp]['MapInfo']
    outf.write(str(chromosome))
    outf.write("\t")
    outf.write(str(idsnip))
    outf.write("\t")
    outf.write(str(geneticdistance))
    outf.write("\t")
    outf.write(str(basepairposition))

    outf.write("\n")


filen.close()
outf.close()
    
