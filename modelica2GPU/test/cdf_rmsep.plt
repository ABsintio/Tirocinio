set terminal qt font "Helvetica, 15"
set xlabel "MRMSEP"
set ylabel "F(MRMSEP)"
set xrange [-1:]
set grid back lc rgb "#939597" 
plot "new_mrmspe.dat" using 1:(norm($1)) smooth cnorm t "CDF" lw 2
Unset grid
