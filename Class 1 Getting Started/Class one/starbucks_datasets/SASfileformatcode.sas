PROC IMPORT OUT= WORK.STARBUCKS 
            DATAFILE= "T:\Teaching\Courses\Advanced_Data_Analysis\Class 1 Getting Started\Class one\starbucks_datasets\starbucks_csv.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
	 Guessingrows=1000;
RUN;

proc sort data=starbucks;
by drink;
run;

PROC EXPORT DATA= WORK.STARBUCKS 
            OUTFILE= "T:\Teaching\Courses\Advanced_Data_Analysis\Class 1
 Getting Started\Class one\starbucks_datasets\starbucks_tab.txt" 
            DBMS=TAB REPLACE;
     PUTNAMES=YES;

RUN;


PROC EXPORT DATA= WORK.STARBUCKS 
            OUTFILE= "T:\Teaching\Courses\Advanced_Data_Analysis\Class 1
 Getting Started\Class one\starbucks_datasets\starbucks_stata.dta" 
            DBMS=dta REPLACE;
     PUTNAMES=YES;

RUN;


PROC EXPORT DATA= WORK.STARBUCKS 
            OUTFILE= "T:\Teaching\Courses\Advanced_Data_Analysis\Class 1
 Getting Started\Class one\starbucks_datasets\starbucks_spss.sav" 
            DBMS=sav REPLACE;
     PUTNAMES=YES;

RUN;
