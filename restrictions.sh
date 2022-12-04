#!/bin/bash

gnuplot -e "set term png enhanced linewidth 2 fontscale 1.75;
set output 'plot_restriction_particle.png';
set ylabel '{/Symbol S}{/Symbol D}_M(t)';
set xlabel 'time t';
plot 'restrictionsdata.dat' using 1:2 w l ls 1 notitle 'particle restriction'"&&\
gnuplot -e "set term png enhanced linewidth 2 fontscale 1.75;
set output 'plot_restriction_energy.png';
set ylabel '{/Symbol S}{/Symbol d}_M(t)';
set xlabel 'time t';
set ytics 0.0000005;
plot 'restrictionsdata.dat' using 1:3 w l ls 1 notitle 'particle restriction'"
