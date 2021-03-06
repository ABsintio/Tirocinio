set terminal wxt font "Helvetica, 15"
set xlabel "MRMSEP"
set ylabel "F(MRMSEP)"
set grid back ls 12 lc rgb "#939597" 
#plot "new_mrmspe.dat" using 1:(norm($1)) smooth cnorm t "CDF" lw 2
plot "mrmspe_gt1.dat" using 1:(norm($1)) smooth cnorm t "CDF" lw 2
unset grid
