
model BIOMD328 "Bucher2011_Atorvastatin_Metabolism"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real CYP3A4_ASLpOH_Km1 = 1400.0;
    parameter Real CYP3A4_ASLoOH_Km1 = 3900.0;
    parameter Real CYP3A4_ASpOH_Km1 = 25600.0;
    parameter Real CYP3A4_ASoOH_Km1 = 29700.0;
    parameter Real Import_ASLpOH_k = 0.033729;
    parameter Real Import_ASLoOH_k = 0.026122;
    parameter Real Import_ASL_k = 0.2754;
    parameter Real fu_ASL = 0.22;
    parameter Real fu_AS = 0.22;
    parameter Real Import_ASpOH_k = 0.0039614;
    parameter Real Export_ASLpOH_k = 0.0011319;
    parameter Real Export_ASLoOH_k = 0.0026674;
    parameter Real k_CR_ASL_c = 3.55e-05;
    parameter Real k_CR_ASL_m = 0.005;
    parameter Real k_PON_OH_c = 0.0039829;
    parameter Real Export_ASoOH_k = 0.0015983;
    parameter Real Prot_k1 = 8.52;
    parameter Real CYP3A4_ASoOH_Vmax = 47.4985;
    parameter Real CYP3A4_ASLpOH_Vmax = 17.4446;
    parameter Real CYP3A4_ASLoOH_Vmax = 39.1342;
    parameter Real UGT1A3_AS_Vmax = 13.5862;
    parameter Real UGT1A3_AS_Km1 = 12000.0;
    parameter Real UGT1A3_AS_KI1 = 75000.0;
    parameter Real k_PON_ASL_c = 0.0043734;
    parameter Real Export_AS_k = 0.002166;
    parameter Real Export_ASL_k = 0.021822;
    parameter Real Import_AS_k = 0.020335;
    parameter Real Import_ASoOH_k = 0.00038875;
    parameter Real Export_ASpOH_k = 0.00079526;
    parameter Real CYP3A4_ASpOH_Vmax = 15.7336;
    parameter Real compartment = 1.0;
    parameter Real medium = 1.0;
    parameter Real cell = 1.0;



    Real AS_m;
    Real ASL_m;
    Real ASoOH_m;
    Real ASLpOH_m;
    Real ASpOH_m;
    Real ASLoOH_m;
    Real AS_c;
    Real ASL_c;
    Real ASpOH_c;
    Real ASoOH_c;
    Real ASLpOH_c;
    Real ASLoOH_c;
    Real ASpOH_b;
    Real ASoOH_b;
    Real ASLpOH_b;
    Real ASLoOH_b;
    Real AS_b;
    Real ASL_b;

initial equation
    AS_m = 8797.15;
    ASL_m = 30.56;
    ASoOH_m = 0.0;
    ASLpOH_m = 0.0;
    ASpOH_m = 0.0;
    ASLoOH_m = 0.0;
    AS_c = 0.0;
    ASL_c = 0.0;
    ASpOH_c = 0.0;
    ASoOH_c = 0.0;
    ASLpOH_c = 0.0;
    ASLoOH_c = 0.0;
    ASpOH_b = 0.0;
    ASoOH_b = 0.0;
    ASLpOH_b = 0.0;
    ASLoOH_b = 0.0;
    AS_b = 0.0;
    ASL_b = 0.0;

equation

    der(AS_m) = (Export_AS_k * AS_c) + (k_CR_ASL_m * ASL_m) - (Import_AS_k * AS_m);
    der(ASL_m) = (Export_ASL_k * ASL_c) - (Import_ASL_k * ASL_m) - (k_CR_ASL_m * ASL_m);
    der(ASoOH_m) = (Export_ASoOH_k * ASoOH_c) + (k_CR_ASL_m * ASLoOH_m) - (Import_ASoOH_k * ASoOH_m);
    der(ASLpOH_m) = (Export_ASLpOH_k * ASLpOH_c) - (Import_ASLpOH_k * ASLpOH_m) - (k_CR_ASL_m * ASLpOH_m);
    der(ASpOH_m) = (k_CR_ASL_m * ASLpOH_m) + (Export_ASpOH_k * ASpOH_c) - (Import_ASpOH_k * ASpOH_m);
    der(ASLoOH_m) = (Export_ASLoOH_k * ASLoOH_c) - (Import_ASLoOH_k * ASLoOH_m) - (k_CR_ASL_m * ASLoOH_m);
    der(AS_c) = (Import_AS_k * AS_m) + ((k_CR_ASL_c + k_PON_ASL_c) * ASL_c) - ((CYP3A4_ASpOH_Vmax / CYP3A4_ASpOH_Km1) * AS_c / (1 + AS_c / CYP3A4_ASpOH_Km1 + AS_c / CYP3A4_ASoOH_Km1 + ASL_c / CYP3A4_ASLpOH_Km1 + ASL_c / CYP3A4_ASLoOH_Km1)) - ((CYP3A4_ASoOH_Vmax / CYP3A4_ASoOH_Km1) * AS_c / (1 + AS_c / CYP3A4_ASpOH_Km1 + AS_c / CYP3A4_ASoOH_Km1 + ASL_c / CYP3A4_ASLpOH_Km1 + ASL_c / CYP3A4_ASLoOH_Km1)) - (UGT1A3_AS_Vmax * AS_c / (UGT1A3_AS_Km1 + AS_c + AS_c * AS_c / UGT1A3_AS_KI1)) - (Export_AS_k * AS_c) - (Prot_k1 * (((1 - fu_AS) / fu_AS) * AS_c - AS_b));
    der(ASL_c) = (Import_ASL_k * ASL_m) + (UGT1A3_AS_Vmax * AS_c / (UGT1A3_AS_Km1 + AS_c + AS_c * AS_c / UGT1A3_AS_KI1)) - ((CYP3A4_ASLpOH_Vmax / CYP3A4_ASLpOH_Km1) * ASL_c / (1 + AS_c / CYP3A4_ASpOH_Km1 + AS_c / CYP3A4_ASoOH_Km1 + ASL_c / CYP3A4_ASLpOH_Km1 + ASL_c / CYP3A4_ASLoOH_Km1)) - ((CYP3A4_ASLoOH_Vmax / CYP3A4_ASLoOH_Km1) * ASL_c / (1 + AS_c / CYP3A4_ASpOH_Km1 + AS_c / CYP3A4_ASoOH_Km1 + ASL_c / CYP3A4_ASLpOH_Km1 + ASL_c / CYP3A4_ASLoOH_Km1)) - ((k_CR_ASL_c + k_PON_ASL_c) * ASL_c) - (Export_ASL_k * ASL_c) - (Prot_k1 * (((1 - fu_ASL) / fu_ASL) * ASL_c - ASL_b));
    der(ASpOH_c) = ((CYP3A4_ASpOH_Vmax / CYP3A4_ASpOH_Km1) * AS_c / (1 + AS_c / CYP3A4_ASpOH_Km1 + AS_c / CYP3A4_ASoOH_Km1 + ASL_c / CYP3A4_ASLpOH_Km1 + ASL_c / CYP3A4_ASLoOH_Km1)) + ((k_CR_ASL_c + k_PON_OH_c) * ASLpOH_c) + (Import_ASpOH_k * ASpOH_m) - (Prot_k1 * (((1 - fu_AS) / fu_AS) * ASpOH_c - ASpOH_b)) - (Export_ASpOH_k * ASpOH_c);
    der(ASoOH_c) = ((CYP3A4_ASoOH_Vmax / CYP3A4_ASoOH_Km1) * AS_c / (1 + AS_c / CYP3A4_ASpOH_Km1 + AS_c / CYP3A4_ASoOH_Km1 + ASL_c / CYP3A4_ASLpOH_Km1 + ASL_c / CYP3A4_ASLoOH_Km1)) + ((k_CR_ASL_c + k_PON_OH_c) * ASLoOH_c) + (Import_ASoOH_k * ASoOH_m) - (Export_ASoOH_k * ASoOH_c) - (Prot_k1 * (((1 - fu_AS) / fu_AS) * ASoOH_c - ASoOH_b));
    der(ASLpOH_c) = ((CYP3A4_ASLpOH_Vmax / CYP3A4_ASLpOH_Km1) * ASL_c / (1 + AS_c / CYP3A4_ASpOH_Km1 + AS_c / CYP3A4_ASoOH_Km1 + ASL_c / CYP3A4_ASLpOH_Km1 + ASL_c / CYP3A4_ASLoOH_Km1)) + (Import_ASLpOH_k * ASLpOH_m) - ((k_CR_ASL_c + k_PON_OH_c) * ASLpOH_c) - (Prot_k1 * (((1 - fu_ASL) / fu_ASL) * ASLpOH_c - ASLpOH_b)) - (Export_ASLpOH_k * ASLpOH_c);
    der(ASLoOH_c) = ((CYP3A4_ASLoOH_Vmax / CYP3A4_ASLoOH_Km1) * ASL_c / (1 + AS_c / CYP3A4_ASpOH_Km1 + AS_c / CYP3A4_ASoOH_Km1 + ASL_c / CYP3A4_ASLpOH_Km1 + ASL_c / CYP3A4_ASLoOH_Km1)) + (Import_ASLoOH_k * ASLoOH_m) - ((k_CR_ASL_c + k_PON_OH_c) * ASLoOH_c) - (Prot_k1 * (((1 - fu_ASL) / fu_ASL) * ASLoOH_c - ASLoOH_b)) - (Export_ASLoOH_k * ASLoOH_c);
    der(ASpOH_b) = (Prot_k1 * (((1 - fu_AS) / fu_AS) * ASpOH_c - ASpOH_b)) ;
    der(ASoOH_b) = (Prot_k1 * (((1 - fu_AS) / fu_AS) * ASoOH_c - ASoOH_b)) ;
    der(ASLpOH_b) = (Prot_k1 * (((1 - fu_ASL) / fu_ASL) * ASLpOH_c - ASLpOH_b)) ;
    der(ASLoOH_b) = (Prot_k1 * (((1 - fu_ASL) / fu_ASL) * ASLoOH_c - ASLoOH_b)) ;
    der(AS_b) = (Prot_k1 * (((1 - fu_AS) / fu_AS) * AS_c - AS_b)) ;
    der(ASL_b) = (Prot_k1 * (((1 - fu_ASL) / fu_ASL) * ASL_c - ASL_b)) ;




end BIOMD328;
