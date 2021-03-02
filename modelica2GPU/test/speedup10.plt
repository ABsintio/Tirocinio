set terminal wxt font "Helvetica, 15"
set table "speedup10.dat"
set xlabel "Efficiency"
set ylabel "f(Efficiency)"
plot "speedup_efficiency.dat" using 9 smooth kdensity t "PDF"
unset table
plot "speedup_efficiency.dat" using 9 smooth kdensity t "PDF"