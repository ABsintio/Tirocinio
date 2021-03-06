set terminal wxt font "Helvetica, 15"
set table "gnuplot_speedup.dat"
set xlabel "S(n)"
set ylabel "f(S(n))"
set grid back ls 12 lc rgb "#939597"
plot "speedup_efficiency.dat" using 9 smooth kdensity lw 2 t "PDF"
unset table
plot "speedup_efficiency.dat" using 9 smooth kdensity lw 2 t "PDF"