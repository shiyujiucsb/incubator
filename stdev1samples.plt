set terminal postscript eps enhanced font 'Times, 22'
set output 'stdev1samples.eps'

set multiplot

set xlabel "#samples"
set ylabel "distance"
set zlabel "factor"
set xrange [1:10]
set yrange [0:0.1]
set zrange [0.0:3.0]
unset colorbox
set view 50,20
set style fill solid 0.6

set border lw 0.5 
unset key

set hidden3d front
set ticslevel 0
set isosamples 20,200

splot	'stdev1samples.txt' using 1:2:3

unset multiplot
set term windows
set output