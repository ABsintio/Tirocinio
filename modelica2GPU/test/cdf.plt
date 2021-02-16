set title "Distribuzione cumulata degli RMSE"
set xlabel "RMSE"
set ylabel "P(RMSE < Threshold)"
set autoscale
plot "result.dat" using 1:2 smooth cnorm t "CDF"
