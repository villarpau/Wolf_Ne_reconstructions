
csvfile="minnesota_subset.csv"
output_file="outp.ped"

openedfile=open(csvfile,"r")
outp=open(output_file,"w",newline="\n")
for line in openedfile:
    line=line.split(",")
    outp.write(str(line[0])+"\t"+str(line[0])+"\t0\t0\t0\t0\t")
    for gen in line[2:]:
        if gen[0]=='?':
            outp.write("0"+"\t")
        else:
            outp.write(gen[0]+"\t")
        if gen[2]=='?':
            outp.write("0"+"\t")
        else:
            outp.write(gen[2]+"\t")       
    outp.write("\n")
        
openedfile.close()
outp.close()
    