set terminal wxt font "Helvetica, 15"
set xlabel "log10(MRMSPE)"
set ylabel "f(MRMSPE)"
set logscale x
set grid back lc rgb "#939597" 
plot "new_mrmspe.dat" smooth kdensity t "PDF" lw 2
unset logscale
unset grid
