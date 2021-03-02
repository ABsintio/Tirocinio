set terminal wxt font "Helvetica, 15"
set xlabel "Efficiency"
set ylabel "F(Efficiency)"
plot "speedup10.dat" using 1:2 smooth cnorm t "CDF"