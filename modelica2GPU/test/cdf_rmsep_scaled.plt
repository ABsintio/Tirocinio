set terminal qt font "Helvetica, 15"
set xlabel "MRMSPE"
set ylabel "F(MRMSPE)"
set xrange [-0.05:1]
set grid back lc rgb "#939597"
plot "new_mrmspe.dat" using 1:(norm($1)) smooth cnorm t "CDF" lw 2
unset xrange
Unset grid
