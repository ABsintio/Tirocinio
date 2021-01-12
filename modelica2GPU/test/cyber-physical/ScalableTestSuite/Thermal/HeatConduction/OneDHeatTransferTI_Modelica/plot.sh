omc run_$1.mos > out
python3 OMCPlot.py --csv HeatConduction.OneDHeatTransferTI_Modelica.OneDHeatTransferTI_Modelica_N_$1_res.csv --model OneDHeatTransferTI_Modelica_N_$1 --dimension $1
sh clear.sh HeatConduction.OneDHeatTransferTI_Modelica.OneDHeatTransferTI_Modelica_N_$1
