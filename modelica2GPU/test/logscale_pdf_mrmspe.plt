set terminal wxt font "Helvetica, 15"
set xlabel "log10(MRMSPE)"
set ylabel "f(MRMSPE)"
set logscale x
plot "new_mrmspe.dat" smooth kdensity t "PDF"
unset logscale
