model BIOMD005 "Tyson Cell Cycle Model"
	
	parameter Real initial_C2 = 0.0;
	parameter Real initial_CP = 0.75;
	parameter Real initial_M  = 0.0;
	parameter Real initial_pM = 0.25;
	parameter Real initial_Y  = 0.0;
	parameter Real initial_YP = 0.0;

	parameter Real k1aaCT = 0.015;
	parameter Real k2 = 0.0;
	parameter Real k3CT = 200;
	parameter Real k4 = 180;
	parameter Real k4prime = 0.018;
	parameter Real k5tildeP = 0.0;
	parameter Real k6 = 1.0;
	parameter Real k7 = 0.0;
	parameter Real k8tildeP = 1.0e+06;
	parameter Real k9 = 1000;

	Real C2_conc;
	Real CP_conc;
	Real M_conc;
	Real pM_conc;
	Real Y_conc;
	Real YP_conc;
	Real CT_amount(start=1.0);
	Real YT_amount(start=0.25);

initial equation
	C2_conc = initial_C2;
	CP_conc = initial_CP;
	M_conc = initial_M;
	pM_conc = initial_pM;
	Y_conc = initial_Y;
	YP_conc = initial_YP;

equation
	YT_amount = Y_conc + YP_conc + M_conc + pM_conc;
	CT_amount = C2_conc + CP_conc + M_conc + pM_conc;
	der(C2_conc) = k6*M_conc - k8tildeP*C2_conc + k9*CP_conc;
	der(CP_conc) = (-(k3CT))*CP_conc*Y_conc + k8tildeP*C2_conc - k9*CP_conc;
	der(pM_conc) = k3CT*CP_conc*Y_conc - pM_conc*(k4prime + k4*Function.pow((M_conc / CT_amount), 2.0)) + k5tildeP*M_conc;
	der(M_conc) = pM_conc*(k4prime + k4*Function.pow((M_conc / CT_amount), 2.0)) - k5tildeP*M_conc - k6*M_conc;
	der(Y_conc) = k1aaCT - k2*Y_conc - k3CT*CP_conc*Y_conc;
	der(YP_conc) = (-(k7))*YP_conc + k6*M_conc;

end BIOMD005;
