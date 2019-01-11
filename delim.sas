data sdata_colon;
  infile "/home/dataset810/Cheng/DataSets/other_del_data.txt" dlm = ":";
/*
  infile "/home/dataset810/Cheng/DataSets/other_del_data.txt" delimiter = ":";
  infile "/home/dataset810/Cheng/DataSets/other_del_data.txt" dsd dlm = ":";
*/
  input name$ Gender$ Age Weight;
  run;
  proc print data=sdata_colon
