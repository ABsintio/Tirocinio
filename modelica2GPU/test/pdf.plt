set table "result.dat"
set title "Distribuzione di densità di probabilità degli RMSE"
set xlabel "RMSE"
set ylabel "P(RMSE)"
set autoscale
plot "rmse.dat" smooth kdensity t "PDF"
unset table
plot "rmse.dat" smooth kdensity t "PDF"


