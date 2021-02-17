load "pdf.plt"
# set title "Distribuzione cumulata degli MRMSE"
set xlabel "MRMSE"
set ylabel "P(MRMSE < Threshold)"
set autoscale
plot "result.dat" using 1:2 smooth cnorm t "CDF"
