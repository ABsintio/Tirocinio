set terminal wxt font "Helvetica, 15"
set grid
set xlabel "MRMSE"
set ylabel "F(MRMSE)"
set xrange [-0.09:]
plot "rmse.dat" using 1:(norm($1)) smooth cnorm t "CDF"
unset grid
unset xrange
