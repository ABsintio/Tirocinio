set terminal qt font "Helvetica, 15"
set xlabel "MRMSEP"
set ylabel "f(MRMSEP)"
set grid back lc rgb "#939597"
plot "new_mrmspe.dat" smooth kdensity t "PDF" lw 2
unset grid
