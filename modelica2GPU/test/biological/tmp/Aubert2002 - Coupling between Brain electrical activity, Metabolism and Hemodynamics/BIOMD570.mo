
model BIOMD570 "Aubert2002 - Coupling between Brain electrical activity, Metabolism and Hemodynamics"

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


    function Constant_flux__irreversible
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end Constant_flux__irreversible;


    function v_pump
        	input Real S_V;
	input Real k_pump;
	input Real ATP;
	input Real NA;
	input Real Km_pump;
        output Real y;
    algorithm
        y :=  S_V * k_pump * ATP * NA / (1 + ATP / Km_pump);
    end v_pump;


    function function_1
        	input Real S_V;
	input Real gNA;
	input Real F;
	input Real RT_F;
	input Real Na_e;
	input Real Na;
	input Real Vm;
        output Real y;
    algorithm
        y :=  S_V * (gNA / F) * (RT_F * ln(Na_e / Na) - Vm);
    end function_1;


    function v_GLC_m
        	input Real Tmax;
	input Real GLC_c;
	input Real Kt_GLC;
	input Real GLC_i;
        output Real y;
    algorithm
        y :=  Tmax * (GLC_c / (GLC_c + Kt_GLC) - GLC_i / (GLC_i + Kt_GLC));
    end v_GLC_m;


    function function_2
        	input Real ATP;
	input Real GLC_i;
	input Real Kg;
	input Real KI_ATP;
	input Real nH;
	input Real kHK_PFK;
        output Real y;
    algorithm
        y :=  kHK_PFK * ATP * (GLC_i / (GLC_i + Kg)) / (1 + (ATP / KI_ATP)^nH);
    end function_2;


    function v_PGK
        	input Real kPGK;
	input Real GAP;
	input Real ADP;
	input Real NAD;
	input Real NADH;
        output Real y;
    algorithm
        y :=  kPGK * GAP * ADP * (NAD / NADH);
    end v_PGK;


    function v_LAC_m
        	input Real Tmax;
	input Real LAC_i;
	input Real Kt_LAC;
	input Real LAC_c;
        output Real y;
    algorithm
        y :=  Tmax * (LAC_i / (LAC_i + Kt_LAC) - LAC_c / (LAC_c + Kt_LAC));
    end v_LAC_m;


    function v_O2_m
        	input Real PS_V;
	input Real KO2;
	input Real HbOP;
	input Real O2_c;
	input Real nh;
	input Real O2_i;
        output Real y;
    algorithm
        y :=  PS_V * (KO2 * (HbOP / O2_c - 1)^(-1 / nh) - O2_i);
    end v_O2_m;


    function v_O2_c
        	input Real F_in;
	input Real V_cap;
	input Real O2_a;
	input Real O2_c;
        output Real y;
    algorithm
        y :=  (2 * F_in / V_cap) * (O2_a - O2_c);
    end v_O2_c;


    function v_GLC_c
        	input Real F_in;
	input Real V_cap;
	input Real GLC_a;
	input Real GLC_c;
        output Real y;
    algorithm
        y :=  (2 * F_in / V_cap) * (GLC_a - GLC_c);
    end v_GLC_c;


    function v_LAC_c
        	input Real F_in;
	input Real V_cap;
	input Real LAC_a;
	input Real LAC_c;
        output Real y;
    algorithm
        y :=  (2 * F_in / V_cap) * (LAC_a - LAC_c);
    end v_LAC_c;


    function v_dHb_in
        	input Real F_in;
	input Real O2_a;
	input Real O2_c;
        output Real y;
    algorithm
        y :=  F_in * 2 * (O2_a - O2_c);
    end v_dHb_in;


    function v_dHb_out
        	input Real F_out;
	input Real dHb;
	input Real V_v;
        output Real y;
    algorithm
        y :=  F_out * dHb / V_v;
    end v_dHb_out;


    parameter Real parameter_1 = 90000.0;
    parameter Real parameter_2 = 0.0039;
    parameter Real parameter_3 = 96500.0;
    parameter Real parameter_4 = 26.73;
    parameter Real parameter_5 = -70.0;
    parameter Real parameter_6 = 150.0;
    parameter Real parameter_8 = 2.9e-07;
    parameter Real parameter_9 = 0.5;
    parameter Real parameter_11 = 0.92;
    parameter Real parameter_12 = 2.212;
    parameter Real parameter_14 = 0.0476;
    parameter Real parameter_15 = 9.0;
    parameter Real parameter_16 = 0.12;
    parameter Real parameter_17 = 1.0;
    parameter Real parameter_18 = 4.0;
    parameter Real parameter_19 = 0.05;
    parameter Real parameter_20 = 42.6;
    parameter Real parameter_21 = 0.212;
    parameter Real parameter_23 = 86.7;
    parameter Real parameter_24 = 2000.0;
    parameter Real parameter_25 = 44.8;
    parameter Real parameter_26 = 0.00628;
    parameter Real parameter_27 = 0.5;
    parameter Real parameter_28 = 0.149;
    parameter Real parameter_29 = 3666.0;
    parameter Real parameter_30 = 20.0;
    parameter Real parameter_31 = 10.0;
    parameter Real parameter_32 = 1.6;
    parameter Real parameter_33 = 0.0361;
    parameter Real parameter_34 = 8.6;
    parameter Real parameter_35 = 2.73;
    parameter Real parameter_36 = 0.012;
    parameter Real parameter_38 = 0.0055;
    parameter Real parameter_47 = 0.0192;
    parameter Real V_max_Mito = 0.05233;
    parameter Real Km_Mito = 0.05;
    parameter Real KI_Mito = 183.3;
    parameter Real n_Mito = 0.1;
    parameter Real K_O2_Mito = 0.001;
    parameter Real alpha_F_in = 0.5;
    parameter Real t_on = 5.0;
    parameter Real t_end = 360.0;
    parameter Real Compartment_7 = compartment_4;
    parameter Real ModelValue_35 = parameter_36;
    parameter Real ModelValue_60 = O2c_bar;
    parameter Real ModelValue_50 = alpha_F_in;
    parameter Real ModelValue_51 = maximum;
    parameter Real ModelValue_53 = t_end;
    parameter Real ModelValue_52 = t_on;
    parameter Real v_14 = 0.149;
    parameter Real compartment_1 = 1.0;
    parameter Real compartment_2 = 1.0;
    parameter Real compartment_3 = 1.0;
    parameter Real compartment_4 = 1.0;

    Real parameter_7(start=2.2);
    Real parameter_10(start=0.0119296850858459);
    Real parameter_13(start=7.03149141540894e-05);
    Real parameter_22(start=0.186);
    Real parameter_37(start=0.012);
    Real dAMP_dATP(start=-0.0116824720687279);
    Real v_Mito_H3(start=0.0191965079261093);
    Real is_maximum(start=0.0);
    Real is_rising(start=1.0);
    Real is_falling(start=0.0);
    Real slope_up(start=0.0);
    Real maximum(start=0.006);
    Real slope_down(start=0.438);
    Real F_out(start=0.012);
    Real v_stim_constant(start=0.23);
    Real rCBF(start=1.0);
    Real rCMRO2(start=0.0);
    Real rVv(start=1.0);
    Real O2c_bar(start=5.68);
    Real ratioO2c_bar(start=1.0);

    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;
    Real species_6;
    Real species_7;
    Real species_8;
    Real species_9;
    Real species_10;
    Real species_11;
    Real species_12;
    Real species_13;
    Real species_14;
    Real species_15;
    Real species_16;
    Real species_17;
    Real species_18;
    Real species_19;
    Real dHb;

initial equation
    species_1 = 15.0;
    species_4 = 1.2;
    species_5 = 0.0057;
    species_7 = 0.026;
    species_8 = 0.16;
    species_9 = 0.02;
    species_10 = 1.0;
    species_11 = 5.0;
    species_13 = 0.0262;
    species_14 = 8.34;
    species_15 = 4.8;
    species_16 = 0.313;
    species_17 = 4.56;
    species_18 = 0.35;
    species_19 = 7.01;
    dHb = 0.0630000000000001;

equation
    species_2 = parameter_7 * compartment_1;
    species_12 = (parameter_31 - species_11 / compartment_1) * compartment_1;
    parameter_10 = parameter_7 / 2 * (-parameter_11 + pow(pow(parameter_11, 2) + 4 * parameter_11 * (parameter_12 / parameter_7 - 1), 0.5));
    species_3 = parameter_10 * compartment_1;
    parameter_13 = parameter_12 - parameter_7 - parameter_10;
    parameter_22 = parameter_21 - species_7 / compartment_1;
    species_6 = parameter_22 * compartment_1;
    dAMP_dATP = -1 + parameter_11 / 2 - 1 / 2 * pow(pow(parameter_11, 2) + 4 * parameter_11 * (parameter_12 / parameter_7 - 1), 1 / 2) + parameter_11 * parameter_12 / (parameter_7 * pow(pow(parameter_11, 2) + 4 * parameter_11 * (parameter_12 / parameter_7 - 1), 1 / 2));
    v_Mito_H3 = V_max_Mito * (species_8 / compartment_1 / (Km_Mito + species_8 / compartment_1)) * (1 / (1 + pow(parameter_7 / (parameter_10 * KI_Mito), n_Mito))) * (species_13 / compartment_1 / (K_O2_Mito + species_13 / compartment_1));
    maximum = ModelValue_35 * ModelValue_50;
    slope_up = ModelValue_51 / ModelValue_52 * time;
    slope_down = maximum * (t_on + t_end - time) / t_on;
    parameter_37 = parameter_36 + is_rising * slope_up + is_maximum * maximum + is_falling * slope_down;
    F_out = parameter_36 * (pow(compartment_4 / Compartment_7, 2) + pow(compartment_4 / Compartment_7, -0.5) * 35 * (1 / Compartment_7) * parameter_37) / (1 + parameter_36 * pow(compartment_4 / Compartment_7, -0.5) * 35 * (1 / Compartment_7));
    rCBF = parameter_37 / ModelValue_35;
    rCMRO2 = mitochondrial_respiration / 0.0192;
    rVv = compartment_4 / Compartment_7;
    O2c_bar = 2 * (species_19 / compartment_3) - species_14 / compartment_2;
    ratioO2c_bar = O2c_bar / ModelValue_60;
    der(compartment_4) = parameter_37 - F_out;
    der(parameter_7) = (-2 * reaction_4 + reaction_5 + reaction_6 - reaction_2 + 15 * mitochondrial_respiration + reaction_9 - ATPases) * pow(1 - dAMP_dATP, -1);
    der(species_1) = (compartment_1 * function_1(parameter_1, parameter_2, parameter_3, parameter_4, parameter_6, species_1 / compartment_1, parameter_5)) + (compartment_1 * Constant_flux__irreversible(v_stim_constant)) - (3.0 * compartment_1 * v_pump(parameter_1, parameter_8, species_2 / compartment_1, species_1 / compartment_1, parameter_9));
    der(species_4) = (v_GLC_m(parameter_14, species_17 / compartment_3, parameter_15, species_4 / compartment_1)) - (compartment_1 * function_2(species_2 / compartment_1, species_4 / compartment_1, parameter_19, parameter_17, parameter_18, parameter_16));
    der(species_5) = (2.0 * compartment_1 * function_2(species_2 / compartment_1, species_4 / compartment_1, parameter_19, parameter_17, parameter_18, parameter_16)) - (compartment_1 * v_PGK(parameter_20, species_5 / compartment_1, species_3 / compartment_1, species_6 / compartment_1, species_7 / compartment_1));
    der(species_7) = (compartment_1 * v_PGK(parameter_20, species_5 / compartment_1, species_3 / compartment_1, species_6 / compartment_1, species_7 / compartment_1)) - (compartment_1 * (parameter_24 * (species_8 / compartment_1) * (species_7 / compartment_1) - parameter_25 * (species_10 / compartment_1) * (species_6 / compartment_1))) - (compartment_1 * Constant_flux__irreversible(v_Mito_H3));
    der(species_8) = (parameter_23 * species_3 * (species_9 / compartment_1)) - (compartment_1 * (parameter_24 * (species_8 / compartment_1) * (species_7 / compartment_1) - parameter_25 * (species_10 / compartment_1) * (species_6 / compartment_1))) - (compartment_1 * Constant_flux__irreversible(v_Mito_H3));
    der(species_9) = (compartment_1 * v_PGK(parameter_20, species_5 / compartment_1, species_3 / compartment_1, species_6 / compartment_1, species_7 / compartment_1)) - (parameter_23 * species_3 * (species_9 / compartment_1));
    der(species_10) = (compartment_1 * (parameter_24 * (species_8 / compartment_1) * (species_7 / compartment_1) - parameter_25 * (species_10 / compartment_1) * (species_6 / compartment_1))) - (v_LAC_m(parameter_26, species_10 / compartment_1, parameter_27, species_18 / compartment_3));
    der(species_11) =  - (compartment_1 * (parameter_29 * (species_11 / compartment_1) * (species_3 / compartment_1) - parameter_30 * (species_12 / compartment_1) * (species_2 / compartment_1)));
    der(species_13) = (v_O2_m(parameter_32, parameter_33, parameter_34, species_19 / compartment_3, parameter_35, species_13 / compartment_1)) - (3.0 * compartment_1 * Constant_flux__irreversible(v_Mito_H3));
    der(species_14) = 0.0;
    der(species_15) = 0.0;
    der(species_16) = 0.0;
    der(species_17) = (v_GLC_c(parameter_37, parameter_38, species_15 / compartment_2, species_17 / compartment_3)) - (100.0 * v_GLC_m(parameter_14, species_17 / compartment_3, parameter_15, species_4 / compartment_1));
    der(species_18) = (100.0 * v_LAC_m(parameter_26, species_10 / compartment_1, parameter_27, species_18 / compartment_3)) + (v_LAC_c(parameter_37, parameter_38, species_16 / compartment_2, species_18 / compartment_3)) ;
    der(species_19) = (v_O2_c(parameter_37, parameter_38, species_14 / compartment_2, species_19 / compartment_3)) - (100.0 * v_O2_m(parameter_32, parameter_33, parameter_34, species_19 / compartment_3, parameter_35, species_13 / compartment_1));
    der(dHb) = (compartment_3 * v_dHb_in(parameter_37, species_14 / compartment_2, species_19 / compartment_3)) - (compartment_3 * v_dHb_out(F_out, dHb / compartment_3, compartment_4));
    der(is_maximum)=0.0;
    der(is_rising)=0.0;
    der(is_falling)=0.0;
    der(v_stim_constant)=0.0;

    when time == ModelValue_52 then
        reinit(is_maximum,1);
        reinit(is_rising,0);
    end when;
    when time == ModelValue_53 then
        reinit(is_maximum,0);
        reinit(is_falling,1);
        reinit(v_stim_constant,0);
    end when;
    when time == (ModelValue_53 + ModelValue_52) then
        reinit(is_falling,0);
    end when;

end BIOMD570;
