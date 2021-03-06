set terminal wxt font "Helvetica, 15"
set xlabel "log10(MRMSPE)"
set ylabel "F(MRMSPE)"
set xrange [1e-5:]
set logscale x
set grid back ls 12 lc rgb "#939597"
plot "new_mrmspe.dat" using 1:(norm($1)) smooth cnorm t "CDF" lw 2
unset logscale
unset xrange
unset grid
