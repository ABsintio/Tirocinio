set terminal wxt font "Helvetica, 15"
set table "rmspe.dat"
set xlabel "MRMSEP"
set ylabel "f(MRMSEP)"
plot "gnuplot_rmspe.dat" smooth kdensity t "PDF"
unset table
plot "gnuplot_rmspe.dat" smooth kdensity t "PDF"
