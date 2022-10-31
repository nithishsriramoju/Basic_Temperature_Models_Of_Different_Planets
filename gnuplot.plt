set terminal wxt size 500,900
set output "Temperature_profiles_observed.png"
set title "STEADY STATE"

set autoscale
set grid
set ylabel "ALTITUDE"
set xlabel "TEMPERATURE"

m="Mars(P_T_Z).txt"
n="Venus(P_T_Z).txt"
l = "Titan(Z_T_P).txt"
p="Earth(Z_P_T).txt"
plot m using 2:3 with linespoints title "Mars",\
     n using 2:3 with linespoints title "Venus",\
     p using 3:1 with linespoints title "Earth",\
     l using 2:1 with linespoints title "Titan",\
     
     for [i=1:51] m using 2:3 with linespoints,\
     
     for [i=1:62] n using 2:3 with linespoints,\
     
     for [i=1:106] l using 2:1 with linespoints,\
     
     for [i=1:41] p using 3:1 with linespoints 


