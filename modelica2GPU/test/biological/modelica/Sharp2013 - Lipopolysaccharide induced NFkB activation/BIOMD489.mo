
model BIOMD489 "Sharp2013 - Lipopolysaccharide induced NFkB activation"

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


    function function_2
        	input Real k;
	input Real Enzyme;
	input Real Substrate;
	input Real Km;
        output Real y;
    algorithm
        y :=  k * Enzyme * Substrate / (Km + Substrate);
    end function_2;


    function function_1
        	input Real k1;
	input Real Enzyme;
	input Real Substrate1;
	input Real Substrate2;
	input Real k2;
	input Real Product;
        output Real y;
    algorithm
        y :=  k1 * Enzyme * Substrate1 * Substrate2 - k2 * Product;
    end function_1;


    parameter Real k1_0 = 0.0001;
    parameter Real k2_0 = 0.0001;
    parameter Real k1_1 = 0.001;
    parameter Real k2_1 = 0.001;
    parameter Real k1_2 = 0.003;
    parameter Real k2_2 = 0.01;
    parameter Real k_3 = 0.1;
    parameter Real Km_3 = 0.1;
    parameter Real k1_4 = 0.1;
    parameter Real k1_5 = 0.0001;
    parameter Real k2_5 = 0.0001;
    parameter Real k_6 = 0.1;
    parameter Real Km_6 = 0.1;
    parameter Real k1_7 = 0.1;
    parameter Real k1_8 = 0.1;
    parameter Real k2_8 = 0.1;
    parameter Real k1_9 = 0.02;
    parameter Real k1_10 = 0.001;
    parameter Real k1_11 = 0.1;
    parameter Real k1_12 = 0.1;
    parameter Real k2_12 = 0.1;
    parameter Real k_13 = 0.1;
    parameter Real Km_13 = 0.1;
    parameter Real k1_14 = 0.5;
    parameter Real k2_14 = 0.0005;
    parameter Real k1_15 = 0.185;
    parameter Real k2_15 = 0.0125;
    parameter Real k1_16 = 0.5;
    parameter Real k2_16 = 0.0005;
    parameter Real k1_17 = 0.048;
    parameter Real k2_17 = 0.00175;
    parameter Real k1_18 = 0.5;
    parameter Real k2_18 = 0.0005;
    parameter Real k1_19 = 0.07;
    parameter Real k2_19 = 0.00175;
    parameter Real k1_20 = 0.0204;
    parameter Real k1_21 = 0.0075;
    parameter Real k1_22 = 0.011;
    parameter Real k1_23 = 2.25e-05;
    parameter Real k1_24 = 2.25e-05;
    parameter Real k1_25 = 2.25e-05;
    parameter Real k1_26 = 0.09;
    parameter Real k2_26 = 8e-05;
    parameter Real k1_27 = 0.5;
    parameter Real k2_27 = 0.0005;
    parameter Real k1_28 = 0.5;
    parameter Real k2_28 = 0.0005;
    parameter Real k1_29 = 0.5;
    parameter Real k2_29 = 0.0005;
    parameter Real k1_30 = 1.54e-06;
    parameter Real k1_31 = 0.0165;
    parameter Real k1_32 = 0.00028;
    parameter Real k1_33 = 1.78e-07;
    parameter Real k1_34 = 0.00028;
    parameter Real k1_35 = 1.27e-07;
    parameter Real k1_36 = 0.00028;
    parameter Real k1_37 = 0.0225;
    parameter Real k2_37 = 0.00125;
    parameter Real k1_38 = 0.00408;
    parameter Real k1_39 = 0.000113;
    parameter Real k1_40 = 0.0003;
    parameter Real k2_40 = 0.0002;
    parameter Real k1_41 = 0.006;
    parameter Real k2_41 = 0.00175;
    parameter Real k1_42 = 0.00408;
    parameter Real k1_43 = 0.000113;
    parameter Real k1_44 = 0.00015;
    parameter Real k2_44 = 0.0001;
    parameter Real k1_45 = 0.009;
    parameter Real k2_45 = 0.00175;
    parameter Real k1_46 = 0.00408;
    parameter Real k1_47 = 0.000113;
    parameter Real k1_48 = 0.00015;
    parameter Real k2_48 = 0.0001;
    parameter Real k1_49 = 0.5;
    parameter Real k2_49 = 0.0005;
    parameter Real k1_50 = 0.0138;
    parameter Real k1_51 = 0.5;
    parameter Real k2_51 = 0.0005;
    parameter Real k1_52 = 0.0052;
    parameter Real k1_53 = 0.5;
    parameter Real k2_53 = 0.0005;
    parameter Real k1_54 = 0.0052;
    parameter Real k1_55 = 0.00407;
    parameter Real k1_56 = 0.0015;
    parameter Real k1_57 = 0.0022;
    parameter Real k1_58 = 0.001;
    parameter Real compartment_1 = 1.0;



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
    Real species_20;
    Real species_21;
    Real species_22;
    Real species_23;
    Real species_24;
    Real species_25;
    Real species_26;
    Real species_27;
    Real species_28;
    Real species_29;
    Real species_30;
    Real species_31;
    Real species_32;
    Real species_33;
    Real species_34;
    Real species_35;
    Real species_36;
    Real species_37;
    Real species_38;
    Real species_39;
    Real species_40;
    Real species_41;
    Real species_42;
    Real species_43;
    Real species_44;
    Real species_45;
    Real species_46;
    Real species_47;
    Real species_48;
    Real species_49;
    Real species_50;
    Real species_51;
    Real species_52;
    Real species_53;

initial equation
    species_1 = 1.0;
    species_2 = 1.0;
    species_3 = 1.0;
    species_4 = 1.0;
    species_5 = 0.0;
    species_6 = 1.0;
    species_7 = 1.0;
    species_8 = 1.0;
    species_9 = 1.0;
    species_10 = 1.0;
    species_11 = 0.0;
    species_12 = 1.0;
    species_13 = 0.0;
    species_14 = 0.1;
    species_15 = 0.0;
    species_16 = 1.0;
    species_17 = 1.0;
    species_18 = 1.0;
    species_19 = 1.0;
    species_20 = 0.0;
    species_21 = 0.0;
    species_22 = 1.0;
    species_23 = 0.0;
    species_24 = 0.0;
    species_25 = 1.0;
    species_26 = 1.0;
    species_27 = 1.0;
    species_28 = 0.0;
    species_29 = 0.0;
    species_30 = 0.0;
    species_31 = 0.1;
    species_32 = 0.0;
    species_33 = 0.0;
    species_34 = 0.0;
    species_35 = 0.0;
    species_36 = 0.0;
    species_37 = 0.0;
    species_38 = 0.0;
    species_39 = 0.0;
    species_40 = 0.0;
    species_41 = 0.0;
    species_42 = 0.0;
    species_43 = 0.0;
    species_44 = 0.0;
    species_45 = 0.0;
    species_46 = 0.0;
    species_47 = 0.0;
    species_48 = 0.0;
    species_49 = 0.0;
    species_50 = 0.0;
    species_51 = 0.0;
    species_52 = 0.0;
    species_53 = 1.0;

equation

    der(species_1) = 0.0;
    der(species_2) = 0.0;
    der(species_3) = 0.0;
    der(species_4) = 0.0;
    der(species_5) = (compartment_1 * (k1_0 * species_4 * species_3 * species_1 * species_8 * species_6 * species_2 * species_7 - k2_0 * species_5)) ;
    der(species_6) = 0.0;
    der(species_7) = 0.0;
    der(species_8) = 0.0;
    der(species_9) =  - (compartment_1 * function_1(k1_1, species_5, species_9, species_10, k2_1, species_11));
    der(species_10) = 0.0;
    der(species_11) = (compartment_1 * function_1(k1_1, species_5, species_9, species_10, k2_1, species_11)) - (compartment_1 * (k1_2 * species_11 * species_12 - k2_2 * species_13));
    der(species_12) = 0.0;
    der(species_13) = (compartment_1 * (k1_2 * species_11 * species_12 - k2_2 * species_13)) ;
    der(species_14) = (compartment_1 * k1_4 * species_15) - (compartment_1 * function_2(k_3, species_13, species_14, Km_3)) - (compartment_1 * function_2(k_13, species_28, species_14, Km_13));
    der(species_15) = (compartment_1 * function_2(k_3, species_13, species_14, Km_3)) + (compartment_1 * function_2(k_13, species_28, species_14, Km_13)) + (compartment_1 * k1_20 * species_32) + (compartment_1 * k1_21 * species_35) + (compartment_1 * k1_22 * species_38) + (compartment_1 * k1_55 * species_49) + (compartment_1 * k1_56 * species_50) + (compartment_1 * k1_57 * species_51) - (compartment_1 * k1_4 * species_15) - (compartment_1 * (k1_15 * species_15 * species_30 - k2_15 * species_32)) - (compartment_1 * (k1_17 * species_15 * species_34 - k2_17 * species_35)) - (compartment_1 * (k1_19 * species_15 * species_37 - k2_19 * species_38)) - (compartment_1 * (k1_37 * species_15 * species_29 - k2_37 * species_49)) - (compartment_1 * (k1_41 * species_15 * species_33 - k2_41 * species_50)) - (compartment_1 * (k1_45 * species_15 * species_36 - k2_45 * species_51));
    der(species_16) = 0.0;
    der(species_17) = 0.0;
    der(species_18) = 0.0;
    der(species_19) = (compartment_1 * k1_7 * species_20) - (compartment_1 * function_2(k_6, species_52, species_19, Km_6));
    der(species_20) = (compartment_1 * function_2(k_6, species_52, species_19, Km_6)) - (compartment_1 * k1_7 * species_20) - (compartment_1 * (k1_8 * species_20 - k2_8 * species_21));
    der(species_21) = (compartment_1 * (k1_8 * species_20 - k2_8 * species_21)) + (2.0 * compartment_1 * k1_9 * pow(species_21, 2)) - (2.0 * compartment_1 * k1_9 * pow(species_21, 2));
    der(species_22) = 0.0;
    der(species_23) = 0.0;
    der(species_24) = (compartment_1 * k1_9 * pow(species_21, 2)) + (compartment_1 * k1_10 * species_22) + (compartment_1 * k1_58 * pow(species_39, 2)) - (compartment_1 * k1_11 * species_24) - (compartment_1 * (k1_12 * species_24 * species_25 * species_27 * species_26 * species_16 - k2_12 * species_28));
    der(species_25) = 0.0;
    der(species_26) = 0.0;
    der(species_27) = 0.0;
    der(species_28) = (compartment_1 * (k1_12 * species_24 * species_25 * species_27 * species_26 * species_16 - k2_12 * species_28)) ;
    der(species_29) = (compartment_1 * k1_38 * species_46) - (compartment_1 * (k1_14 * species_29 * species_31 - k2_14 * species_30)) - (compartment_1 * (k1_37 * species_15 * species_29 - k2_37 * species_49)) - (compartment_1 * k1_39 * species_29) - (compartment_1 * (k1_40 * species_29 - k2_40 * species_40));
    der(species_30) = (compartment_1 * (k1_14 * species_29 * species_31 - k2_14 * species_30)) + (compartment_1 * k1_50 * species_41) - (compartment_1 * (k1_15 * species_15 * species_30 - k2_15 * species_32)) - (compartment_1 * k1_23 * species_30);
    der(species_31) = (compartment_1 * k1_20 * species_32) + (compartment_1 * k1_21 * species_35) + (compartment_1 * k1_22 * species_38) + (compartment_1 * k1_23 * species_30) + (compartment_1 * k1_24 * species_34) + (compartment_1 * k1_25 * species_37) - (compartment_1 * (k1_14 * species_29 * species_31 - k2_14 * species_30)) - (compartment_1 * (k1_16 * species_33 * species_31 - k2_16 * species_34)) - (compartment_1 * (k1_18 * species_36 * species_31 - k2_18 * species_37)) - (compartment_1 * (k1_26 * species_31 - k2_26 * species_39)) - (compartment_1 * (k1_49 * species_49 * species_31 - k2_49 * species_32)) - (compartment_1 * (k1_51 * species_50 * species_31 - k2_51 * species_35)) - (compartment_1 * (k1_53 * species_51 * species_31 - k2_53 * species_38));
    der(species_32) = (compartment_1 * (k1_15 * species_15 * species_30 - k2_15 * species_32)) + (compartment_1 * (k1_49 * species_49 * species_31 - k2_49 * species_32)) - (compartment_1 * k1_20 * species_32);
    der(species_33) = (compartment_1 * k1_42 * species_47) - (compartment_1 * (k1_16 * species_33 * species_31 - k2_16 * species_34)) - (compartment_1 * (k1_41 * species_15 * species_33 - k2_41 * species_50)) - (compartment_1 * k1_43 * species_33) - (compartment_1 * (k1_44 * species_33 - k2_44 * species_42));
    der(species_34) = (compartment_1 * (k1_16 * species_33 * species_31 - k2_16 * species_34)) + (compartment_1 * k1_52 * species_43) - (compartment_1 * (k1_17 * species_15 * species_34 - k2_17 * species_35)) - (compartment_1 * k1_24 * species_34);
    der(species_35) = (compartment_1 * (k1_17 * species_15 * species_34 - k2_17 * species_35)) + (compartment_1 * (k1_51 * species_50 * species_31 - k2_51 * species_35)) - (compartment_1 * k1_21 * species_35);
    der(species_36) = (compartment_1 * k1_46 * species_48) - (compartment_1 * (k1_18 * species_36 * species_31 - k2_18 * species_37)) - (compartment_1 * (k1_45 * species_15 * species_36 - k2_45 * species_51)) - (compartment_1 * k1_47 * species_36) - (compartment_1 * (k1_48 * species_36 - k2_48 * species_44));
    der(species_37) = (compartment_1 * (k1_18 * species_36 * species_31 - k2_18 * species_37)) + (compartment_1 * k1_54 * species_45) - (compartment_1 * (k1_19 * species_15 * species_37 - k2_19 * species_38)) - (compartment_1 * k1_25 * species_37);
    der(species_38) = (compartment_1 * (k1_19 * species_15 * species_37 - k2_19 * species_38)) + (compartment_1 * (k1_53 * species_51 * species_31 - k2_53 * species_38)) - (compartment_1 * k1_22 * species_38);
    der(species_39) = (compartment_1 * (k1_26 * species_31 - k2_26 * species_39)) + (2.0 * compartment_1 * k1_31 * pow(species_39, 2)) + (2.0 * compartment_1 * k1_58 * pow(species_39, 2)) - (compartment_1 * (k1_27 * species_40 * species_39 - k2_27 * species_41)) - (compartment_1 * (k1_28 * species_42 * species_39 - k2_28 * species_43)) - (compartment_1 * (k1_29 * species_44 * species_39 - k2_29 * species_45)) - (2.0 * compartment_1 * k1_31 * pow(species_39, 2)) - (2.0 * compartment_1 * k1_58 * pow(species_39, 2));
    der(species_40) = (compartment_1 * (k1_40 * species_29 - k2_40 * species_40)) - (compartment_1 * (k1_27 * species_40 * species_39 - k2_27 * species_41));
    der(species_41) = (compartment_1 * (k1_27 * species_40 * species_39 - k2_27 * species_41)) - (compartment_1 * k1_50 * species_41);
    der(species_42) = (compartment_1 * (k1_44 * species_33 - k2_44 * species_42)) - (compartment_1 * (k1_28 * species_42 * species_39 - k2_28 * species_43));
    der(species_43) = (compartment_1 * (k1_28 * species_42 * species_39 - k2_28 * species_43)) - (compartment_1 * k1_52 * species_43);
    der(species_44) = (compartment_1 * (k1_48 * species_36 - k2_48 * species_44)) - (compartment_1 * (k1_29 * species_44 * species_39 - k2_29 * species_45));
    der(species_45) = (compartment_1 * (k1_29 * species_44 * species_39 - k2_29 * species_45)) - (compartment_1 * k1_54 * species_45);
    der(species_46) = (compartment_1 * k1_30 * species_22) + (compartment_1 * k1_31 * pow(species_39, 2)) + (compartment_1 * k1_38 * species_46) - (compartment_1 * k1_32 * species_46) - (compartment_1 * k1_38 * species_46);
    der(species_47) = (compartment_1 * k1_33 * species_22) + (compartment_1 * k1_42 * species_47) - (compartment_1 * k1_34 * species_47) - (compartment_1 * k1_42 * species_47);
    der(species_48) = (compartment_1 * k1_35 * species_22) + (compartment_1 * k1_46 * species_48) - (compartment_1 * k1_36 * species_48) - (compartment_1 * k1_46 * species_48);
    der(species_49) = (compartment_1 * (k1_37 * species_15 * species_29 - k2_37 * species_49)) - (compartment_1 * (k1_49 * species_49 * species_31 - k2_49 * species_32)) - (compartment_1 * k1_55 * species_49);
    der(species_50) = (compartment_1 * (k1_41 * species_15 * species_33 - k2_41 * species_50)) - (compartment_1 * (k1_51 * species_50 * species_31 - k2_51 * species_35)) - (compartment_1 * k1_56 * species_50);
    der(species_51) = (compartment_1 * (k1_45 * species_15 * species_36 - k2_45 * species_51)) - (compartment_1 * (k1_53 * species_51 * species_31 - k2_53 * species_38)) - (compartment_1 * k1_57 * species_51);
    der(species_52) = (compartment_1 * (k1_5 * species_4 * species_3 * species_1 * species_8 * species_18 * species_17 * species_16 * species_53 - k2_5 * species_52)) ;
    der(species_53) = 0.0;




end BIOMD489;
