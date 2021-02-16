set table "speed1.dat"
set title "Distribuzione cumulativa degli speedup"
set xlabel "X"
set ylabel "P(X < threshold)"
set autoscale
plot "speedup1.dat" smooth kdensity t "PDF"
unset table
plot "speed1.dat" using 1:2 smooth cnormal t "CDF"
