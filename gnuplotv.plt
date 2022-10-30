set terminal pngcairo size 1000,1000 enhanced font 'Verdana,16'
set output 'Venus.png'
set title "TEMPERATURE PROFILE"
set nokey 
set autoscale
set grid
set xlabel "TEMPERATURE"
set ylabel "ALTITUDE"
set label "OBSERVED" at 300,60
set label "MODELED" at 205,160
m="Venus(P_T_Z).txt"
p="Modeled_venus.txt"
plot for [i=1:62] m using 2:3 with linespoints  ,\
     for [i=1:62] p using 2:1 with linespoints 
