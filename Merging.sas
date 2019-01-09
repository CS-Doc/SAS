data houseprice;
infile '/home/dataset810/Ninja/houseprice (2).txt';
input type$ price tax;
RUN;

data newhomes;
infile '/home/dataset810/Ninja/newhomes (2).txt'
input type$ price tax;
RUN;

proc sort data=houseprice out=houseprice2;
BY price;
RUN;

proc sort data=newhomes out=newhomes2;
BY price;
RUN;

data newcollections;
merge houseprice2 newhomes2;
run;

proc print newcollections;
run;