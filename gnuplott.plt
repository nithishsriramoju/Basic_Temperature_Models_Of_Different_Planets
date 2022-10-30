set terminal pngcairo size 1000,1000 enhanced font 'Verdana,16'
set output 'Titan.png'
set title "TEMPERATURE PROFILE"
set nokey 
set autoscale
set grid
set xlabel "TEMPERATURE"
set ylabel "ALTITUDE"
set label "OBSERVED" at 125,75
set label "MODELED" at  80,150
m="Titan(Z_T_P).txt"
p="Modeled_titan.txt"
plot for [i=1:201] m using 2:1 with linespoints  ,\
     for [i=1:201] p using 2:1 with linespoints 
