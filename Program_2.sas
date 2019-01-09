DATA houseprice;
INPUT type$ price tax;
CARDS;
Single 300000 0.20
Single 250000 0.25
Duplex 175000 0.15
;
RUN;
proc print DATA=houseprice;
RUN;

proc sort DATA=houseprice; out=houseprice2;
BY DESCENDING tax;
RUN;
proc print DATA=houseprice2;
RUN;

data r_houseprice; set houseprice;
keep type price;
run;

data clean; set houseprice;
rename type=TTYPE
       price=PPRICE
       tax=TTAX;
       run;
       
       data cl; set cl;
       label type='Type of Home'
       price='Price of Home';
       RUN;
       
       proc freq data=cl;
       table type price tax