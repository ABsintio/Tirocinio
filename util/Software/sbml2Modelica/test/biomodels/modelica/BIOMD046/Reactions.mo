within BIOMD046;
class Reactions

    input Real elmt_per3;
    input Real elmt_ArH;
    input Real elmt_per2;
    input Real elmt_O2;
    input Real elmt_coIII;
    input Real elmt_compartment;
    input Real elmt_H2O2;
    input Real elmt_coI;
    input Real elmt_Ar;
    input Real elmt_NADrad;
    input Real elmt_O2g;
    input Real elmt_super;
    input Real elmt_coII;
    input Real elmt_NADH;

    Real elmt_v12(unit = "") "";
    parameter Real elmt_v12_elmt_k12(unit "") = 0.08 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_v9(unit = "") "";
    parameter Real elmt_v9_elmt_k9(unit "") = 60.0 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_v11(unit = "") "";
    parameter Real elmt_v11_elmt_k11(unit "") = 0.1 "";
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_reactant35 "";
    Real elmt_v132(unit = "") "";
    parameter Real elmt_v132_elmt_k13b(unit "") = 0.006 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_v10(unit = "") "";
    parameter Real elmt_v10_elmt_k10(unit "") = 1.8 "";
    Real elmt_reactant31 "";
    Real elmt_product34 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_v131(unit = "") "";
    parameter Real elmt_v131_elmt_k13f(unit "") = 0.006 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_v7(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_v7_elmt_k7(unit "") = 20.0 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_v8(unit = "") "";
    parameter Real elmt_v8_elmt_k8(unit "") = 40.0 "";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_product28 "";
    Real elmt_v5(unit = "") "";
    parameter Real elmt_v5_elmt_k5(unit "") = 20.0 "";
    Real elmt_reactant15 "";
    Real elmt_reactant16 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_v6(unit = "") "";
    parameter Real elmt_v6_elmt_k6(unit "") = 17.0 "";
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_v14(unit = "") "";
    parameter Real elmt_v14_elmt_k14(unit "") = 0.7 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_v3(unit = "") "";
    parameter Real elmt_v3_elmt_k3(unit "") = 0.15 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant7 "";
    Real elmt_v4(unit = "") "";
    parameter Real elmt_v4_elmt_k4(unit "") = 0.0052 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_v1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_v1_elmt_k1(unit "") = 3.0E-6 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_v2(unit = "") "";
    parameter Real elmt_v2_elmt_k2(unit "") = 18.0 "";
    Real elmt_reactant4 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product34 = 1.0;
        elmt_product33 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant22 = 2.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product27 = 1.0;
        elmt_product47 = 1.0;
        elmt_product24 = 1.0;
        elmt_product46 = 1.0;
        elmt_product28 = 1.0;
        elmt_product41 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product43 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant29 = 2.0;
        elmt_product37 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;
        elmt_product39 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_v12 = (elmt_compartment * elmt_v12_elmt_k12);
        elmt_v9 = (elmt_compartment * elmt_v9_elmt_k9 * elmt_NADrad * elmt_NADrad);
        elmt_v11 = (elmt_compartment * elmt_v11_elmt_k11 * elmt_per2 * elmt_O2);
        elmt_v132 = (elmt_compartment * elmt_v132_elmt_k13b * elmt_O2);
        elmt_v10 = (elmt_compartment * elmt_v10_elmt_k10 * elmt_per3 * elmt_NADrad);
        elmt_v131 = (elmt_compartment * elmt_v131_elmt_k13f * elmt_O2g);
        elmt_v7 = (elmt_compartment * elmt_v7_elmt_k7 * elmt_super * elmt_super);
        elmt_v8 = (elmt_compartment * elmt_v8_elmt_k8 * elmt_coIII * elmt_NADrad);
        elmt_v5 = (elmt_compartment * elmt_v5_elmt_k5 * elmt_NADrad * elmt_O2);
        elmt_v6 = (elmt_compartment * elmt_v6_elmt_k6 * elmt_super * elmt_per3);
        elmt_v14 = (elmt_compartment * elmt_v14_elmt_k14 * elmt_Ar * elmt_NADH);
        elmt_v3 = (elmt_compartment * elmt_v3_elmt_k3 * elmt_coI * elmt_ArH);
        elmt_v4 = (elmt_compartment * elmt_v4_elmt_k4 * elmt_coII * elmt_ArH);
        elmt_v1 = (elmt_compartment * elmt_v1_elmt_k1 * elmt_NADH * elmt_O2);
        elmt_v2 = (elmt_compartment * elmt_v2_elmt_k2 * elmt_H2O2 * elmt_per3);
        der(elmt_product30) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product34) = 0;
        der(elmt_product33) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product27) = 0;
        der(elmt_product47) = 0;
        der(elmt_product24) = 0;
        der(elmt_product46) = 0;
        der(elmt_product28) = 0;
        der(elmt_product41) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product43) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product37) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;
        der(elmt_product39) = 0;
        der(elmt_product17) = 0;

end Reactions;
