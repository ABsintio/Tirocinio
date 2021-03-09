set terminal qt font "Helvetica, 15"
set table "pdf_speedup.dat"
plot "speedup_efficiency.dat" using 9 smooth kdensity
unset table

set grid back ls 12 lc rgb "#939597"
set xlabel "E(n)"
set ylabel "F(E(n))"
plot "pdf_speedup.dat" using 1:2 smooth cnorm t "CDF" lw 2
unset grid
unset xlabel
unset ylabel