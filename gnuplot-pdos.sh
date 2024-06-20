#!/opt/local/bin/gnuplot
set terminal postscript enhanced color solid lw 1.2 "Times-Roman" 24
set  output 'pdos.eps'
set nokey
set nolabel
#set title "spin-down channel"
set encoding utf8
unset xtics
unset ytics
unset label
unset xrange
unset yrange
set key font "Times-Roman,24" samplen 1.5 at 2,10
set mxtics 5
set mytics 5
set xzeroaxis
set yzeroaxis
set xrange[-3:3]
set ylabel "DOS(states/eV/unitcell)"
set xtics 1
set xlabel "Energy (eV)"
set yrange[-10:10]
set ytics 2
plot 'TDOS.OUT' u ($1*27.21138386):($2*-1/27.21138386) title 'TDOS' w line lt 1 lc 0 lw 1.5,\
'Zn-pdos-d.dat' u ($1*27.21138386):($2*-1/27.21138386) title 'Zn-d' w line lt 1 lc rgb '#FF0000' lw 1.5,\
'Zn-pdos-d.dat' u ($1*27.21138386):($3*-1/27.21138386) notitle 'Zn' w line lt 1 lc rgb '#FF0000' lw 1.5,\
'V-pdos-d.dat' u ($1*27.21138386):($2*-1/27.21138386) title 'V-d' w line lt 1 lc rgb '#0000FF' lw 1.5,\
'V-pdos-d.dat' u ($1*27.21138386):($3*-1/27.21138386) notitle 'O' w line lt 1 lc rgb '#0000FF' lw 1.5,\
'O-pdos-p.dat' u ($1*27.21138386):($2*-1/27.21138386) title 'O-p' w line lt 1 lc 4 lw 1.5,\
'O-pdos-p.dat' u ($1*27.21138386):($3*-1/27.21138386) notitle 'O-p' w line lt 1 lc 4 lw 1.5
