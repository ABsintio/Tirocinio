set terminal wxt font "Helvetica, 15"
set xlabel "MRMSEP"
set ylabel "F(MRMSEP)"
plot "rmspe.dat" using 1:2 smooth cnorm t "CDF"
