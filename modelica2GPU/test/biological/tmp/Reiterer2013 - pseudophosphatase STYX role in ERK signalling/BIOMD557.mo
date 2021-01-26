
model BIOMD557 "Reiterer2013 - pseudophosphatase STYX role in ERK signalling"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real k_ERKin = 0.144;
    parameter Real k_ERKout = 1.08;
    parameter Real k_pERKin = 0.144;
    parameter Real k_pERKout = 1.08;
    parameter Real k_ppERKin = 0.66;
    parameter Real k_ppERKout = 0.78;
    parameter Real k1_ES = 1.0;
    parameter Real k2_ES = 60.0;
    parameter Real k1_pES = 1.0;
    parameter Real k2_pES = 60.0;
    parameter Real k1_ppES = 1.0;
    parameter Real k2_ppES = 60.0;
    parameter Real k1_ERKc = 1.0;
    parameter Real k2_ERKc = 350.0;
    parameter Real k3_ERKc = 13.2;
    parameter Real kd1_ppERKc = 1.0;
    parameter Real kd2_ppERKc = 60.0;
    parameter Real kd3_ppERKc = 0.388;
    parameter Real kd1_pERKc = 1.0;
    parameter Real kd2_pERKc = 160.0;
    parameter Real kd3_pERKc = 0.432;
    parameter Real kd1_ERKc = 0.0;
    parameter Real kd2_ERKc = 5160.0;
    parameter Real k1_ERKn = 1.0;
    parameter Real k2_ERKn = 350.0;
    parameter Real k3_ERKn = 13.2;
    parameter Real kd1_ppERKn = 1.0;
    parameter Real kd2_ppERKn = 60.0;
    parameter Real kd3_ppERKn = 38.88;
    parameter Real kd1_pERKn = 1.0;
    parameter Real kd2_pERKn = 160.0;
    parameter Real kd3_pERKn = 43.2;
    parameter Real kd1_ERKn = 0.0;
    parameter Real kd2_ERKn = 160.0;
    parameter Real k_ppMEKc_tot = 100.0;
    parameter Real actCompl = 1e-09;
    parameter Real duspn_basal = 1.0;
    parameter Real duspn_ind = 20.0;
    parameter Real Kduspn = 1000.0;
    parameter Real Tduspn = 10.0;
    parameter Real v2 = 10.0;
    parameter Real TDUSPn = 45.0;
    parameter Real scale_cytERK_tot = 1.0;
    parameter Real scale_nucERK_tot = 1.0;
    parameter Real scale_cellERK_tot = 1.0;
    parameter Real scale_cytppERK_tot = 1.0;
    parameter Real scale_nucppERK_tot = 1.0;
    parameter Real scale_cellppERK_tot = 0.0193861307997638;
    parameter Real scale_tDUSPn = 1.0;
    parameter Real scale_tERK_STYXn = 1.0;
    parameter Real cytosol = 1.0;
    parameter Real nucleus = 1.0;



    Real ERKc;
    Real pERKc;
    Real ppERKc;
    Real ERK_ppMEKc;
    Real pERK_ppMEKc;
    Real DUSPc;
    Real pERK_DUSPc;
    Real ppERK_DUSPc;
    Real ERKn;
    Real pERKn;
    Real ppERKn;
    Real pERK_DUSPn;
    Real ppERK_DUSPn;
    Real STYXn;
    Real ERK_STYXn;
    Real pERK_STYXn;
    Real ppERK_STYXn;
    Real duspn;
    Real DUSPn;
    Real u_ppMEKc_tot;
    Real ppMEKc_tot;
    Real ERKc_obs;
    Real pERKc_obs;
    Real ppERKc_obs;
    Real ERK_ppMEKc_obs;

initial equation
    ERKc = 572.5;
    pERKc = 0.0;
    ppERKc = 0.0;
    ERK_ppMEKc = 0.0;
    pERK_ppMEKc = 0.0;
    DUSPc = 100.0;
    pERK_DUSPc = 0.0;
    ppERK_DUSPc = 0.0;
    ERKn = 1630.9;
    pERKn = 0.0;
    ppERKn = 0.0;
    pERK_DUSPn = 0.0;
    ppERK_DUSPn = 0.0;
    STYXn = 3000.0;
    ERK_STYXn = 0.0;
    pERK_STYXn = 0.0;
    ppERK_STYXn = 0.0;
    duspn = 1.0;
    DUSPn = 10.0;

equation
    ppMEKc_tot = u_ppMEKc_tot * k_ppMEKc_tot;
    ERKc_obs = ERKc;
    pERKc_obs = pERKc;
    ppERKc_obs = ppERKc;
    ERK_ppMEKc_obs = ERK_ppMEKc;
    u_ppMEKc_tot = piecewise(0, lt(time, -1), 0, lt(time, 0), 1, lt(time, 120), 1);
    der(ERKc) = (kd3_pERKc * pERK_DUSPc * cytosol) - (k1_ERKc * ERKc * (ppMEKc_tot * cytosol - ERK_ppMEKc * cytosol - pERK_ppMEKc) * cytosol - k2_ERKc * ERK_ppMEKc * cytosol) - (k_ERKin * ERKc * cytosol - k_ERKout * ERKn * nucleus);
    der(pERKc) = (k3_ERKc * ERK_ppMEKc * cytosol) + (kd3_ppERKc * ppERK_DUSPc * cytosol) - (k1_ERKc * pERKc * (ppMEKc_tot * cytosol - pERK_ppMEKc * cytosol - ERK_ppMEKc) * cytosol - k2_ERKc * pERK_ppMEKc * cytosol) - (k_pERKin * pERKc * cytosol - k_pERKout * pERKn * nucleus) - ((kd1_pERKc * pERKc * DUSPc / 0.94 * cytosol - kd2_pERKc * pERK_DUSPc) * cytosol);
    der(ppERKc) = (k3_ERKc * pERK_ppMEKc * cytosol) - (k_ppERKin * ppERKc * cytosol - k_ppERKout * ppERKn * nucleus) - ((kd1_ppERKc * ppERKc * DUSPc / 0.94 * cytosol - kd2_ppERKc * ppERK_DUSPc) * cytosol);
    der(ERK_ppMEKc) = (k1_ERKc * ERKc * (ppMEKc_tot * cytosol - ERK_ppMEKc * cytosol - pERK_ppMEKc) * cytosol - k2_ERKc * ERK_ppMEKc * cytosol) - (k3_ERKc * ERK_ppMEKc * cytosol);
    der(pERK_ppMEKc) = (k1_ERKc * pERKc * (ppMEKc_tot * cytosol - pERK_ppMEKc * cytosol - ERK_ppMEKc) * cytosol - k2_ERKc * pERK_ppMEKc * cytosol) - (k3_ERKc * pERK_ppMEKc * cytosol);
    der(DUSPc) = (kd3_ppERKc * ppERK_DUSPc * cytosol) + (kd3_pERKc * pERK_DUSPc * cytosol) - ((kd1_ppERKc * ppERKc * DUSPc / 0.94 * cytosol - kd2_ppERKc * ppERK_DUSPc) * cytosol) - ((kd1_pERKc * pERKc * DUSPc / 0.94 * cytosol - kd2_pERKc * pERK_DUSPc) * cytosol);
    der(pERK_DUSPc) = ((kd1_pERKc * pERKc * DUSPc / 0.94 * cytosol - kd2_pERKc * pERK_DUSPc) * cytosol) - (kd3_pERKc * pERK_DUSPc * cytosol);
    der(ppERK_DUSPc) = ((kd1_ppERKc * ppERKc * DUSPc / 0.94 * cytosol - kd2_ppERKc * ppERK_DUSPc) * cytosol) - (kd3_ppERKc * ppERK_DUSPc * cytosol);
    der(ERKn) = (k_ERKin * ERKc * cytosol - k_ERKout * ERKn * nucleus) + (kd3_pERKn * pERK_DUSPn * nucleus) - ((k1_ES * ERKn * STYXn / 0.22 * nucleus - k2_ES * ERK_STYXn) * nucleus);
    der(pERKn) = (k_pERKin * pERKc * cytosol - k_pERKout * pERKn * nucleus) + (kd3_ppERKn * ppERK_DUSPn * nucleus) - ((kd1_pERKn * pERKn * DUSPn / 0.22 * nucleus - kd2_pERKn * pERK_DUSPn) * nucleus) - ((k1_pES * pERKn * STYXn / 0.22 * nucleus - k2_pES * pERK_STYXn) * nucleus);
    der(ppERKn) = (k_ppERKin * ppERKc * cytosol - k_ppERKout * ppERKn * nucleus) - ((kd1_ppERKn * ppERKn * DUSPn / 0.22 * nucleus - kd2_ppERKn * ppERK_DUSPn) * nucleus) - ((k1_ppES * ppERKn * STYXn / 0.22 * nucleus - k2_ppES * ppERK_STYXn) * nucleus);
    der(pERK_DUSPn) = ((kd1_pERKn * pERKn * DUSPn / 0.22 * nucleus - kd2_pERKn * pERK_DUSPn) * nucleus) - (kd3_pERKn * pERK_DUSPn * nucleus);
    der(ppERK_DUSPn) = ((kd1_ppERKn * ppERKn * DUSPn / 0.22 * nucleus - kd2_ppERKn * ppERK_DUSPn) * nucleus) - (kd3_ppERKn * ppERK_DUSPn * nucleus);
    der(STYXn) =  - ((k1_ES * ERKn * STYXn / 0.22 * nucleus - k2_ES * ERK_STYXn) * nucleus) - ((k1_pES * pERKn * STYXn / 0.22 * nucleus - k2_pES * pERK_STYXn) * nucleus) - ((k1_ppES * ppERKn * STYXn / 0.22 * nucleus - k2_ppES * ppERK_STYXn) * nucleus);
    der(ERK_STYXn) = ((k1_ES * ERKn * STYXn / 0.22 * nucleus - k2_ES * ERK_STYXn) * nucleus) ;
    der(pERK_STYXn) = ((k1_pES * pERKn * STYXn / 0.22 * nucleus - k2_pES * pERK_STYXn) * nucleus) ;
    der(ppERK_STYXn) = ((k1_ppES * ppERKn * STYXn / 0.22 * nucleus - k2_ppES * ppERK_STYXn) * nucleus) ;
    der(duspn) = (duspn_basal * (1 + duspn_ind * pow(ppERKn, 2) / (pow(ppERKn, 2) * nucleus + pow(Kduspn, 2))) * 0.693 / Tduspn) - (duspn * 0.693 / Tduspn * nucleus);
    der(DUSPn) = (kd3_ppERKn * ppERK_DUSPn * nucleus) + (kd3_pERKn * pERK_DUSPn * nucleus) + (v2 * duspn / 0.22 * 0.693 / TDUSPn * nucleus) - ((kd1_ppERKn * ppERKn * DUSPn / 0.22 * nucleus - kd2_ppERKn * ppERK_DUSPn) * nucleus) - ((kd1_pERKn * pERKn * DUSPn / 0.22 * nucleus - kd2_pERKn * pERK_DUSPn) * nucleus) - (DUSPn * 0.693 / TDUSPn * nucleus);




end BIOMD557;
