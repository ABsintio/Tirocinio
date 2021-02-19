set xlabel "Range numero variabili (ampiezza 10)"
set ylabel "MRMSE medio del range"
pl "mrmse_var_wrange10onvar.dat" using 2:xtic(1) with lp pt 7 t "MRMSE(medio)/range", \
"mrmse_var_wrange10onvar.dat" using 3:xtic(1) with l t "Valore medio"
