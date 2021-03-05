set terminal wxt font "Helvetica, 15"
set xlabel "MRMSEP"
set ylabel "f(MRMSEP)"
set grid
plot "new_mrmspe.dat" smooth kdensity t "PDF"
unset grid
