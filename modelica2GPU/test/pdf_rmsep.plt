set terminal wxt font "Helvetica, 15"
set xlabel "MRMSEP"
set ylabel "f(MRMSEP)"
set grid back ls 12 lc rgb "#939597"
#plot "new_mrmspe.dat" smooth kdensity t "PDF" lw 2
plot "mrmspe_gt1.dat" smooth kdensity t "PDF" lw 2
unset grid
