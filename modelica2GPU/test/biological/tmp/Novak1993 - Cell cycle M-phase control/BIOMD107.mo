
model BIOMD107 "Novak1993 - Cell cycle M-phase control"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real total_cdc2 = 100.0;
    parameter Real total_cdc25 = 1.0;
    parameter Real total_wee1 = 1.0;
    parameter Real total_IE = 1.0;
    parameter Real total_UbE = 1.0;
    parameter Real V25_prime = 0.1;
    parameter Real V25_double_prime = 2.0;
    parameter Real Vwee_prime = 0.1;
    parameter Real Vwee_double_prime = 1.0;
    parameter Real V2_prime = 0.015;
    parameter Real V2_double_prime = 1.0;
    parameter Real k1AA = 1.0;
    parameter Real k3 = 0.01;
    parameter Real kinh = 0.025;
    parameter Real kcak = 0.25;
    parameter Real ka = 0.01;
    parameter Real K_a = 0.1;
    parameter Real kbPPase = 0.125;
    parameter Real K_b = 0.1;
    parameter Real ke = 0.0133;
    parameter Real K_e = 0.3;
    parameter Real kfPPase = 0.1;
    parameter Real K_f = 0.3;
    parameter Real kg = 0.0065;
    parameter Real K_g = 0.01;
    parameter Real khPPAse = 0.087;
    parameter Real K_h = 0.01;
    parameter Real kc = 0.1;
    parameter Real K_c = 0.01;
    parameter Real kd_anti_IE = 0.095;
    parameter Real K_d = 0.01;

    Real k25(start=0.0);
    Real kwee(start=0.0);
    Real k2(start=0.0);
    Real total_cyclin(start=0.0);
    Real Y15P(start=0.0);

    Real cyclin;
    Real dimer;
    Real dimer_p;
    Real p_dimer;
    Real p_dimer_p;
    Real cdc25_p;
    Real wee1_p;
    Real IE_p;
    Real UbE_star;
    Real cdc2;
    Real cdc25;
    Real wee1;
    Real IE;
    Real UbE;

initial equation
    cyclin = 100.0;
    dimer = 0.0;
    dimer_p = 0.0;
    p_dimer = 0.0;
    p_dimer_p = 0.0;
    cdc25_p = 0.0;
    wee1_p = 0.0;
    IE_p = 0.0;
    UbE_star = 0.0;
    cdc2 = 0.0;
    cdc25 = 0.0;
    wee1 = 0.0;
    IE = 0.0;
    UbE = 0.0;

equation
    cdc2 = total_cdc2 - (dimer + p_dimer + p_dimer_p + dimer_p);
    cdc25 = total_cdc25 - cdc25_p;
    wee1 = total_wee1 - wee1_p;
    IE = total_IE - IE_p;
    UbE = total_UbE - UbE_star;
    k25 = V25_prime * (total_cdc25 - cdc25_p) + V25_double_prime * cdc25_p;
    kwee = Vwee_prime * wee1_p + Vwee_double_prime * (total_wee1 - wee1_p);
    k2 = V2_prime * (total_UbE - UbE_star) + V2_double_prime * UbE_star;
    total_cyclin = cyclin + dimer + dimer_p + p_dimer + p_dimer_p;
    Y15P = p_dimer + p_dimer_p;
    der(cyclin) = (k1AA) - (k2 * cyclin) - (k3 * cyclin * cdc2);
    der(dimer) = (k3 * cyclin * cdc2) + (kinh * dimer_p) + (k25 * p_dimer) - (kwee * dimer) - (kcak * dimer) - (k2 * dimer);
    der(dimer_p) = (kcak * dimer) + (k25 * p_dimer_p) - (kinh * dimer_p) - (kwee * dimer_p) - (k2 * dimer_p);
    der(p_dimer) = (kwee * dimer) + (kinh * p_dimer_p) - (k25 * p_dimer) - (kcak * p_dimer) - (k2 * p_dimer);
    der(p_dimer_p) = (kcak * p_dimer) + (kwee * dimer_p) - (kinh * p_dimer_p) - (k25 * p_dimer_p) - (k2 * p_dimer_p);
    der(cdc25_p) = (ka * dimer_p * (total_cdc25 - cdc25_p) / (K_a + total_cdc25 - cdc25_p)) - (kbPPase * cdc25_p / (K_b + cdc25_p));
    der(wee1_p) = (ke * dimer_p * (total_wee1 - wee1_p) / (K_e + total_wee1 - wee1_p)) - (kfPPase * wee1_p / (K_f + wee1_p));
    der(IE_p) = (kg * dimer_p * (total_IE - IE_p) / (K_g + total_IE - IE_p)) - (khPPAse * IE_p / (K_h + IE_p));
    der(UbE_star) = (kc * IE_p * (total_UbE - UbE_star) / (K_c + total_UbE - UbE_star)) - (kd_anti_IE * UbE_star / (K_d + UbE_star));




end BIOMD107;
