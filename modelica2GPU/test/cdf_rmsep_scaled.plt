set terminal wxt font "Helvetica, 15"
set xlabel "MRMSPE"
set ylabel "F(MRMSPE)"
set xrange [-0.05:1]
plot "new_mrmspe.dat" using 1:(norm($1)) smooth cnorm t "CDF"
unset xrange
