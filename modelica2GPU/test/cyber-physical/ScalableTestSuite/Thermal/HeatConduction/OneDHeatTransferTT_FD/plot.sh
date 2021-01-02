omc run_$1.mos > out
python3 OMCPlot.py --csv HeatConduction.OneDHeatTransferTT_FD.OneDHeatTransferTT_FD_N_$1_res.csv --model OneDHeatTransferTT_FD_N_$1 --dimension $1
sh clear.sh HeatConduction.OneDHeatTransferTT_FD.OneDHeatTransferTT_FD_N_$1
