set terminal wxt font "Helvetica, 15"
set xlabel "log10(MRMSPE)"
set ylabel "F(MRMSPE)"
set xrange [0.1:90]
set logscale x
set mytics
set grid
set autoscale xfixmax
plot "new_mrmspe.dat" using 1:(norm($1)) smooth cnorm t "CDF"
unset logscale
unset xrange
unset mytics
unset autoscale
unset grid
