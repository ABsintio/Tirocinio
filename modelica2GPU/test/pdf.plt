set terminal wxt font 'Helvetica,15'
set table "result.dat"

set xlabel "MRMSE"
set ylabel "f(MRMSE)"
set autoscale
plot "rmse.dat" smooth kdensity t "PDF"
unset table
plot "rmse.dat" smooth kdensity t "PDF"


