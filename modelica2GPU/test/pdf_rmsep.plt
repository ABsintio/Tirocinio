set terminal qt font "Helvetica, 15"
set xlabel "MRMSEP"
set ylabel "f(MRMSEP)"
plot "new_mrmspe.dat" smooth kdensity t "PDF"
