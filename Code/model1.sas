ODS RTF FILE='M:\econ304\model.rtf';
data one;
infile 'M:\econ304\maxim.csv' dlm = ',';
input trump clinton other hs c y white black am asian native hispanic; high_school_ = hs *100;
bachelors_ = c*100; income_ = y;
black_ = black*100; hispanic_ = hispanic*100;
pct = 100*trump/(trump + clinton + other); run;
proc print;
run;
proc corr;
run;
proc reg;
model pct = high_school_ bachelors_ income_ black_ hispanic_/VIF; run;
ODS RTF CLOSE;