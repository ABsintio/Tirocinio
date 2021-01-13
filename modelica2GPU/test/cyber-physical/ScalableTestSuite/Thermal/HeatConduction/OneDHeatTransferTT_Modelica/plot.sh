omc run_$1.mos > out
python3 OMCPlot.py --csv HeatConduction.OneDHeatTransferTT_Modelica.OneDHeatTransferTT_Modelica_N_$1_res.csv --model OneDHeatTransferTT_Modelica_N_$1 --dimension $1
sh clear.sh HeatConduction.OneDHeatTransferTT_Modelica.OneDHeatTransferTT_Modelica_N_$1
