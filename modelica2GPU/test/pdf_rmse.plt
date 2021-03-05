set terminal wxt font "Helvetica, 15"
set grid
set xlabel "MRMSE"
set ylabel "f(MRMSE)"
plot "rmse.dat" smooth kdensity t "PDF"
unset grid
