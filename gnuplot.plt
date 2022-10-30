set terminal wxt size 500,1000
set title "STEADY_STATE"
set nokey
set autoscale
set grid
set xlabel "LENGTH"
set ylabel "TEMPERATURE"
unset label
m="Mars(P_T_Z).txt"
n="Venus(P_T_Z).txt"
l = "Titan(Z_T_P).txt"
p="Earth(Z_P_T).txt"
plot for [i=1:51] m using 2:3 with linespoints,\
     for [i=1:62] n using 2:3 with linespoints,\
     for [i=1:106] l using 2:1 with linespoints,\
     for [i=1:41] p using 3:1 with linespoints
