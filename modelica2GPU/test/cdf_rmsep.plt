set terminal wxt font "Helvetica, 15"
set xlabel "MRMSEP"
set ylabel "F(MRMSEP)"
set xrange [-1:90]
plot "new_mrmspe.dat" using 1:(norm($1)) smooth cnorm t "CDF"
