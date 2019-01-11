data sdata_commas;
   infile "/home/dataset810/Base/DataSets/DATA_commas.csv" dsd;
   input name$ Gender$ Age Weight;
run;

proc print data=sdata_commas;
run;   
   