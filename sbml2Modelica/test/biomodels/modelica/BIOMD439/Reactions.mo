within BIOMD439;
class Reactions

    input Real elmt_P;
    input Real elmt_compartment;
    input Real elmt_Gabg;
    input Real elmt_GaGTP;
    input Real elmt_L;
    input Real elmt_RGSinertGaGTP;
    input Real elmt_RGS;
    input Real elmt_inertGaGTP;
    input Real elmt_RGabg;
    input Real elmt_Effector;
    input Real elmt_ka;
    input Real elmt_GaGDP;
    input Real elmt_RGabgL;
    input Real elmt_GaGDPP;
    input Real elmt_GaGTPEffector;
    input Real elmt_z3;
    input Real elmt_Gbg;
    input Real elmt_RL;
    input Real elmt_RGSGaGTP;
    input Real elmt_z1;
    input Real elmt_R;
    input Real elmt_z2;

    Real elmt_R7(unit = "") "Galpha-RGS association";
    parameter Real elmt_R7_elmt_k7(unit "m3.0.mol-1.0.s-1.0") = 500.0 "";
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_R16(unit = "") "Gprotein subunits association";
    parameter Real elmt_R16_elmt_k16(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_R8(unit = "") "Galpha deactivation by RGS";
    parameter Real elmt_R8_elmt_k8(unit "s-1.0") = 2.5 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_R17(unit = "") "Phosphate degradation";
    parameter Real elmt_R17_elmt_k17(unit "s-1.0") = 10.0 "";
    Real elmt_reactant47 "";
    Real elmt_R5(unit = "") "Galpha activation by receptor";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R5_elmt_k5(unit "s-1.0") = 50.0 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_R14(unit = "") "inertGalpha deactivation spontaneous";
    parameter Real elmt_R14_elmt_k14(unit "s-1.0") = 0.005 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_R6(unit = "") "Galpha activation spontaneous";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R6_elmt_k6(unit "s-1.0") = 0.2 "";
    Real elmt_reactant16 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_R15(unit = "") "Phosphate release";
    parameter Real elmt_R15_elmt_k15(unit "s-1.0") = 1000.0 "";
    Real elmt_reactant41 "";
    Real elmt_product43 "";
    Real elmt_product42 "";
    Real elmt_R3(unit = "") "RL-Gprotein association";
    parameter Real elmt_R3_elmt_k3(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_R12(unit = "") "inertGalpha-RGS association";
    parameter Real elmt_R12_elmt_k12(unit "m3.0.mol-1.0.s-1.0") = 50.0 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_reactant34 "";
    Real elmt_R4(unit = "") "RGabg-Ligand association";
    parameter Real elmt_R4_elmt_k4(unit "m3.0.mol-1.0.s-1.0") = 0.005 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_R13(unit = "") "inertGalpha deactivation by RGS";
    parameter Real elmt_R13_elmt_k13(unit "s-1.0") = 0.3 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_product37 "";
    Real elmt_R1(unit = "") "Receptor-Ligand association";
    parameter Real elmt_R1_elmt_k1(unit "m3.0.mol-1.0.s-1.0") = 0.0025 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_R10(unit = "") "Galpha-Effector association";
    parameter Real elmt_R10_elmt_k10(unit "m3.0.mol-1.0.s-1.0") = 10.0 "";
    Real elmt_reactant27 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_R21(unit = "") "Delay 4";
    Real elmt_reactant53 "";
    Real elmt_R2(unit = "") "Receptor-Gprotein association";
    parameter Real elmt_R2_elmt_k2(unit "m3.0.mol-1.0.s-1.0") = 0.005 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_R11(unit = "") "Galpha becomes inert";
    parameter Real elmt_R11_elmt_k11(unit "s-1.0") = 1.0 "";
    Real elmt_reactant30 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_R9(unit = "") "Galpha deactivation spontaneous";
    parameter Real elmt_R9_elmt_k9(unit "s-1.0") = 0.005 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_R18(unit = "") "Delay 1";
    Real elmt_product48 "";
    Real elmt_R19(unit = "") "Delay 2";
    Real elmt_product50 "";
    Real elmt_reactant49 "";
    Real elmt_R20(unit = "") "Delay 3";
    Real elmt_product52 "";
    Real elmt_reactant51 "";


    initial equation
        elmt_reactant41 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_product29 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product43 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product38 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product52 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product48 = 1.0;
        elmt_product46 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_R7 = (elmt_compartment * elmt_GaGTP * elmt_RGS * elmt_R7_elmt_k7);
        elmt_R16 = (elmt_compartment * elmt_GaGDP * elmt_Gbg * elmt_R16_elmt_k16);
        elmt_R8 = (elmt_compartment * elmt_RGSGaGTP * elmt_R8_elmt_k8);
        elmt_R17 = (elmt_compartment * elmt_P * elmt_R17_elmt_k17);
        elmt_R5 = (elmt_compartment * elmt_RGabgL * elmt_R5_elmt_k5);
        elmt_R14 = (elmt_compartment * elmt_inertGaGTP * elmt_R14_elmt_k14);
        elmt_R6 = (elmt_compartment * elmt_Gabg * elmt_R6_elmt_k6);
        elmt_R15 = (elmt_compartment * elmt_GaGDPP * elmt_R15_elmt_k15);
        elmt_R3 = (elmt_compartment * elmt_RL * elmt_Gabg * elmt_R3_elmt_k3);
        elmt_R12 = (elmt_compartment * elmt_inertGaGTP * elmt_RGS * elmt_R12_elmt_k12);
        elmt_R4 = (elmt_compartment * elmt_RGabg * elmt_L * elmt_R4_elmt_k4);
        elmt_R13 = (elmt_compartment * elmt_RGSinertGaGTP * elmt_R13_elmt_k13);
        elmt_R1 = (elmt_compartment * elmt_R * elmt_L * elmt_R1_elmt_k1);
        elmt_R10 = (elmt_compartment * elmt_Effector * elmt_GaGTP * elmt_R10_elmt_k10);
        elmt_R21 = (elmt_compartment * elmt_z3 * elmt_ka);
        elmt_R2 = (elmt_compartment * elmt_R * elmt_Gabg * elmt_R2_elmt_k2);
        elmt_R11 = (elmt_compartment * elmt_GaGTPEffector * elmt_R11_elmt_k11);
        elmt_R9 = (elmt_compartment * elmt_GaGTP * elmt_R9_elmt_k9);
        elmt_R18 = (elmt_compartment * elmt_GaGTPEffector * elmt_ka);
        elmt_R19 = (elmt_compartment * elmt_z1 * elmt_ka);
        elmt_R20 = (elmt_compartment * elmt_z2 * elmt_ka);
        der(elmt_reactant41) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product43) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product38) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product52) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
