within HeatConduction.OneDHeatTransferTT_FD;
model OneDHeatTransferTT_FD_N_10;
	extends OneDHeatTransferTT_FD_model(L = 0.2, N = 10, T0 = 273.15, T1 = 330, TN = 300, cp = 910, lambda = 237, rho = 2712);
end OneDHeatTransferTT_FD_N_10;