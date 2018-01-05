libname desktop 'C:\Users\kijohnson\Desktop';
libname sasxpt XPORT 'C:\Users\kijohnson\Desktop\starbuck.xpt';

Data desktop.starbuck;
set starbucks;
rename _Calories=calories;
rename _Carb___g_=carbs_g;
rename _Fiber__g_=fiber_g;
rename _Protein__g_=prot_g;
run; 

Proc copy in=desktop out=sasxpt;
select starbuck;
run;
