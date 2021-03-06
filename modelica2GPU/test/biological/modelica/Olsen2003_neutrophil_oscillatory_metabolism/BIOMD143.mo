
model BIOMD143 "Olsen2003_neutrophil_oscillatory_metabolism"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Knadph = 60.0;
    parameter Real k1 = 50.0;
    parameter Real kminus1 = 58.0;
    parameter Real k2 = 10.0;
    parameter Real k3 = 0.004;
    parameter Real k4 = 20.0;
    parameter Real k5 = 10.0;
    parameter Real k6 = 0.1;
    parameter Real k7 = 1e-06;
    parameter Real k8 = 50.0;
    parameter Real k9 = 500.0;
    parameter Real k10 = 10.0;
    parameter Real k11 = 60.0;
    parameter Real k12 = 25.0;
    parameter Real k13 = 12.5;
    parameter Real kminus13 = 0.045;
    parameter Real k14 = 30.0;
    parameter Real k15 = 30.0;
    parameter Real k16 = 10.0;
    parameter Real k17 = 10.0;
    parameter Real k18 = 2.0;
    parameter Real V = 288.0;
    parameter Real L = 550.0;
    parameter Real Ko = 1.5;
    parameter Real phagosome = 1.0;
    parameter Real cytoplasm = 1.0;



    Real H2O2_p;
    Real per3_p;
    Real coI_p;
    Real MLTH_p;
    Real coII_p;
    Real MLT_p;
    Real O2minus_p;
    Real H_p;
    Real O2_p;
    Real NADPH_c;
    Real O2_c;
    Real NADPplus_c;
    Real H2O2_c;
    Real NADP_c;
    Real O2minus_c;
    Real H_c;
    Real MLT_c;
    Real MLTH_c;
    Real coIII_p;
    Real NADP2_c;

initial equation
    H2O2_p = 0.0;
    per3_p = 300.0;
    coI_p = 0.0;
    MLTH_p = 300.0;
    coII_p = 0.0;
    MLT_p = 0.0;
    O2minus_p = 0.0;
    H_p = 0.0;
    O2_p = 0.0;
    NADPH_c = 0.0;
    O2_c = 0.0;
    NADPplus_c = 0.0;
    H2O2_c = 0.0;
    NADP_c = 0.0;
    O2minus_c = 0.0;
    H_c = 0.0;
    MLT_c = 0.0;
    MLTH_c = 300.0;
    coIII_p = 0.0;
    NADP2_c = 0.0;

equation

    der(H2O2_p) = (phagosome * k5 * O2minus_p^2) - (phagosome * (k1 * H2O2_p * per3_p - kminus1 * coI_p)) - (phagosome * (k15 * H2O2_p - k15 * H2O2_c));
    der(per3_p) = (phagosome * k3 * coII_p * MLTH_p) - (phagosome * (k1 * H2O2_p * per3_p - kminus1 * coI_p)) - (phagosome * k4 * per3_p * O2minus_p);
    der(coI_p) = (phagosome * (k1 * H2O2_p * per3_p - kminus1 * coI_p)) + (phagosome * k6 * coIII_p * O2minus_p) - (phagosome * k2 * coI_p * MLTH_p);
    der(MLTH_p) =  - (phagosome * k2 * coI_p * MLTH_p) - (phagosome * k3 * coII_p * MLTH_p) - (phagosome * (k16 * MLTH_p - k16 * MLTH_c));
    der(coII_p) = (phagosome * k2 * coI_p * MLTH_p) - (phagosome * k3 * coII_p * MLTH_p);
    der(MLT_p) = (phagosome * k2 * coI_p * MLTH_p) + (phagosome * k3 * coII_p * MLTH_p) - (phagosome * (k17 * MLT_p - k17 * MLT_c));
    der(O2minus_p) = (2.0 * phagosome * ((V * NADPH_c / Knadph) * (1 + NADPH_c / Knadph) * O2_p / ((L + (1 + NADPH_c / Knadph)^2) * (Ko + O2_p)))) - (phagosome * k4 * per3_p * O2minus_p) - (2.0 * phagosome * k5 * O2minus_p^2) - (phagosome * k6 * coIII_p * O2minus_p) - (phagosome * (k18 * O2minus_p - k18 * O2minus_c));
    der(H_p) =  - (2.0 * phagosome * k5 * O2minus_p^2);
    der(O2_p) = (phagosome * k5 * O2minus_p^2) + (phagosome * k6 * coIII_p * O2minus_p) - (phagosome * (k14 * O2_p - k14 * O2_c)) - (2.0 * phagosome * ((V * NADPH_c / Knadph) * (1 + NADPH_c / Knadph) * O2_p / ((L + (1 + NADPH_c / Knadph)^2) * (Ko + O2_p))));
    der(NADPH_c) = (cytoplasm * k12) - (cytoplasm * k7 * NADPH_c * O2_c) - (cytoplasm * k10 * MLT_c * NADPH_c) - (phagosome * ((V * NADPH_c / Knadph) * (1 + NADPH_c / Knadph) * O2_p / ((L + (1 + NADPH_c / Knadph)^2) * (Ko + O2_p))));
    der(O2_c) = (cytoplasm * k9 * O2minus_c^2) + (cytoplasm * k13) + (phagosome * (k14 * O2_p - k14 * O2_c)) - (cytoplasm * k7 * NADPH_c * O2_c) - (cytoplasm * k8 * NADP_c * O2_c) - (cytoplasm * kminus13 * O2_c);
    der(NADPplus_c) = (cytoplasm * k7 * NADPH_c * O2_c) + (cytoplasm * k8 * NADP_c * O2_c) + (phagosome * ((V * NADPH_c / Knadph) * (1 + NADPH_c / Knadph) * O2_p / ((L + (1 + NADPH_c / Knadph)^2) * (Ko + O2_p)))) ;
    der(H2O2_c) = (cytoplasm * k7 * NADPH_c * O2_c) + (cytoplasm * k9 * O2minus_c^2) + (phagosome * (k15 * H2O2_p - k15 * H2O2_c)) ;
    der(NADP_c) = (cytoplasm * k10 * MLT_c * NADPH_c) - (cytoplasm * k8 * NADP_c * O2_c) - (2.0 * cytoplasm * k11 * NADP_c^2);
    der(O2minus_c) = (cytoplasm * k8 * NADP_c * O2_c) + (phagosome * (k18 * O2minus_p - k18 * O2minus_c)) - (2.0 * cytoplasm * k9 * O2minus_c^2);
    der(H_c) =  - (2.0 * cytoplasm * k9 * O2minus_c^2);
    der(MLT_c) = (phagosome * (k17 * MLT_p - k17 * MLT_c)) - (cytoplasm * k10 * MLT_c * NADPH_c);
    der(MLTH_c) = (cytoplasm * k10 * MLT_c * NADPH_c) + (phagosome * (k16 * MLTH_p - k16 * MLTH_c)) ;
    der(coIII_p) = (phagosome * k4 * per3_p * O2minus_p) - (phagosome * k6 * coIII_p * O2minus_p);
    der(NADP2_c) = (cytoplasm * k11 * NADP_c^2) ;




end BIOMD143;
