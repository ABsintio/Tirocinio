set terminal qt font "Helvetica, 15"
set grid front lc rgb "#939597"
set xlabel "MRMSE"
set ylabel "f(MRMSE)"
plot "rmse.dat" smooth kdensity t "PDF" lw 2
unset grid
