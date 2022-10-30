set terminal pngcairo size 1000,1000 enhanced font 'Verdana,16'
set output 'Mars_dust.png'
set title "TEMPERATURE PROFILE"
set nokey 
set autoscale
set grid
set xlabel "TEMPERATURE"
set ylabel "ALTITUDE"
set label "OBSERVED" at 142,85
set label "MODELED" at 180,85
m="Mars(P_T_Z).txt"
p="Modeled_dust_mars.txt"
plot for [i=1:51] m using 2:3 with linespoints  ,\
     for [i=1:101] p using 2:1 with linespoints 
set terminal x11
set output
replot
