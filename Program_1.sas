data stu_math;
input stu_name $ math_score;
cards;
Speedy 90
Tim 91
Sharon 100
Mike 60
Michael 75
;
run;

proc means data = stu_math;
var math_score;
run;

data hello;
input name $ Gender $ Age Weight;
cards;
Tim M 50 145
Sara . 23 130
Mike M 65 180
Laura F . 167
Sean M 15 167
;
run;

proc print data=hello;
run; 