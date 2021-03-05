set terminal qt font "Helvetica, 15"
set grid front lc rgb "#939597"
set xlabel "MRMSE"
set ylabel "F(MRMSE)"
set xrange [-0.05:]
plot "rmse.dat" using 1:(norm($1)) smooth cnorm t "CDF" lw 2
unset grid
unset xrange
