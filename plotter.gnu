#!/usr/bin/gnuplot

set xdata time
set timefmt "%d/%m/%Y %H:%M:%S"
set format x "%H:%M"
set xlabel "time"

set ylabel "total actives"
set yrange [0:5]

set title "riide response time"
set key reverse Left outside
set grid

set style data linespoints

plot "plot.dat" using 1:3 title "slot_1"

pause 5

reread
#
