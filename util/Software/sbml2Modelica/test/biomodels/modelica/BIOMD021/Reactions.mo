within BIOMD021;
class Reactions

    input Real elmt_compartment_0000002;
    input Real elmt_Cell;
    input Real elmt_Mp;
    input Real elmt_P1;
    input Real elmt_P2;
    input Real elmt_CC;
    input Real elmt_P0;
    input Real elmt_Cn;
    input Real elmt_Mt;
    input Real elmt_V_dT;
    input Real elmt_T1;
    input Real elmt_T2;
    input Real elmt_V_mT;
    input Real elmt_T0;

    Real elmt_P1_degradation(unit = "") "PER-1 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_P1_degradation_elmt_k_d(unit "") = 0.01 "";
    Real elmt_reactant18 "";
    Real elmt_P2_degradation(unit = "") "PER-2 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_P2_degradation_elmt_K_dP(unit "") = 0.2 "";
    parameter Real elmt_P2_degradation_elmt_k_d(unit "") = 0.01 "";
    parameter Real elmt_P2_degradation_elmt_V_dP(unit "") = 2.0 "";
    Real elmt_reactant20 "";
    Real elmt_T2_degradation(unit = "") "TIM-2 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_T2_degradation_elmt_K_dT(unit "") = 0.2 "";
    parameter Real elmt_T2_degradation_elmt_k_d(unit "") = 0.01 "";
    Real elmt_reactant21 "";
    Real elmt_P1_to_P0(unit = "") "Dephosphorylation of PER (1st P)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_P1_to_P0_elmt_V_2P(unit "") = 1.0 "";
    parameter Real elmt_P1_to_P0_elmt_K_2P(unit "") = 2.0 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_Mp_degradation(unit = "") "PER mRNA degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Mp_degradation_elmt_V_mP(unit "") = 0.7 "";
    parameter Real elmt_Mp_degradation_elmt_k_d(unit "") = 0.01 "";
    parameter Real elmt_Mp_degradation_elmt_K_mP(unit "") = 0.2 "";
    Real elmt_reactant33 "";
    Real elmt_T1_to_T2(unit = "") "Second Phosphorylation of TIM";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_T1_to_T2_elmt_K_3T(unit "") = 2.0 "";
    parameter Real elmt_T1_to_T2_elmt_V_3T(unit "") = 8.0 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_PT_complex_formation(unit = "") "PER-TIM complex formation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PT_complex_formation_elmt_k4(unit "") = 0.6 "";
    parameter Real elmt_PT_complex_formation_elmt_k3(unit "") = 1.2 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_P1_to_P2(unit = "") "Second Phosphorylation of PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_P1_to_P2_elmt_K_3P(unit "") = 2.0 "";
    parameter Real elmt_P1_to_P2_elmt_V_3P(unit "") = 8.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_P0_degradation(unit = "") "PER degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_P0_degradation_elmt_k_d(unit "") = 0.01 "";
    Real elmt_reactant16 "";
    Real elmt_Mp_production(unit = "") "PER mRNA production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Mp_production_elmt_n(unit "") = 4.0 "";
    parameter Real elmt_Mp_production_elmt_K_IP(unit "") = 1.0 "";
    parameter Real elmt_Mp_production_elmt_v_sP(unit "") = 1.0 "";
    Real elmt_product29 "";
    Real elmt_Mt_production(unit = "") "TIM mRNA production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Mt_production_elmt_V_sT(unit "") = 1.0 "";
    parameter Real elmt_Mt_production_elmt_n(unit "") = 4.0 "";
    parameter Real elmt_Mt_production_elmt_K_IT(unit "") = 1.0 "";
    Real elmt_product30 "";
    Real elmt_T0_degradation(unit = "") "TIM degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_T0_degradation_elmt_k_d(unit "") = 0.01 "";
    Real elmt_reactant17 "";
    Real elmt_PTnucl_complex_degradation(unit = "") "PER-TIM complex degradation (nuclear)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PTnucl_complex_degradation_elmt_k_dN(unit "") = 0.01 "";
    Real elmt_reactant28 "";
    Real elmt_T1_to_T0(unit = "") "Dephosphorylation of TIM (1st P)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_T1_to_T0_elmt_K_2T(unit "") = 2.0 "";
    parameter Real elmt_T1_to_T0_elmt_V_2T(unit "") = 1.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_T1_degradation(unit = "") "TIM-1 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_T1_degradation_elmt_k_d(unit "") = 0.01 "";
    Real elmt_reactant19 "";
    Real elmt_P2_to_P1(unit = "") "Dephosphorylation of PER (2nd P)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_P2_to_P1_elmt_K_4P(unit "") = 2.0 "";
    parameter Real elmt_P2_to_P1_elmt_V_4P(unit "") = 1.0 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_T2_to_T1(unit = "") "Dephosphorylation of TIM (2nd P)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_T2_to_T1_elmt_V_4T(unit "") = 1.0 "";
    parameter Real elmt_T2_to_T1_elmt_K_4T(unit "") = 2.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_PT_complex_degradation(unit = "") "PER-TIM complex degradation (cytosol)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PT_complex_degradation_elmt_k_dC(unit "") = 0.01 "";
    Real elmt_reactant27 "";
    Real elmt_P0_production(unit = "") "PER production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_P0_production_elmt_k_sP(unit "") = 0.9 "";
    Real elmt_product31 "";
    Real elmt_Mt_degradation(unit = "") "TIM mRNA degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Mt_degradation_elmt_k_d(unit "") = 0.01 "";
    parameter Real elmt_Mt_degradation_elmt_K_mT(unit "") = 0.2 "";
    Real elmt_reactant34 "";
    Real elmt_P0_to_P1(unit = "") "First Phosphorylation of PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_P0_to_P1_elmt_V_1P(unit "") = 8.0 "";
    parameter Real elmt_P0_to_P1_elmt_K1_P(unit "") = 2.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_T0_production(unit = "") "TIM production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_T0_production_elmt_k_sT(unit "") = 0.9 "";
    Real elmt_product32 "";
    Real elmt_T0_to_T1(unit = "") "First Phosphorylation of TIM";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_T0_to_T1_elmt_V_1T(unit "") = 8.0 "";
    parameter Real elmt_T0_to_T1_elmt_K_1T(unit "") = 2.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_PT_complex_nucleation(unit = "") "PER-TIM complex nucleation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PT_complex_nucleation_elmt_k1(unit "") = 0.6 "";
    parameter Real elmt_PT_complex_nucleation_elmt_k2(unit "") = 0.2 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_product29 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_P1_degradation = (elmt_Cell * elmt_P1_degradation_elmt_k_d * elmt_P1);
        elmt_P2_degradation = ((elmt_Cell * elmt_P2_degradation_elmt_k_d * elmt_P2) + ((elmt_Cell * elmt_P2_degradation_elmt_V_dP * elmt_P2) / (elmt_P2_degradation_elmt_K_dP + elmt_P2)));
        elmt_T2_degradation = ((elmt_Cell * elmt_T2_degradation_elmt_k_d * elmt_T2) + ((elmt_Cell * elmt_V_dT * elmt_T2) / (elmt_T2_degradation_elmt_K_dT + elmt_T2)));
        elmt_P1_to_P0 = ((elmt_Cell * elmt_P1_to_P0_elmt_V_2P * elmt_P1) / (elmt_P1_to_P0_elmt_K_2P + elmt_P1));
        elmt_Mp_degradation = ((elmt_Cell * elmt_Mp_degradation_elmt_k_d * elmt_Mp) + ((elmt_Cell * elmt_Mp_degradation_elmt_V_mP * elmt_Mp) / (elmt_Mp_degradation_elmt_K_mP + elmt_Mp)));
        elmt_T1_to_T2 = ((elmt_Cell * elmt_T1_to_T2_elmt_V_3T * elmt_T1) / (elmt_T1_to_T2_elmt_K_3T + elmt_T1));
        elmt_PT_complex_formation = ((elmt_Cell * elmt_PT_complex_formation_elmt_k3 * elmt_P2 * elmt_T2) - (elmt_Cell * elmt_PT_complex_formation_elmt_k4 * elmt_CC));
        elmt_P1_to_P2 = ((elmt_Cell * elmt_P1_to_P2_elmt_V_3P * elmt_P1) / (elmt_P1_to_P2_elmt_K_3P + elmt_P1));
        elmt_P0_degradation = (elmt_Cell * elmt_P0_degradation_elmt_k_d * elmt_P0);
        elmt_Mp_production = ((elmt_Cell * elmt_Mp_production_elmt_v_sP * Functions.pow(elmt_Mp_production_elmt_K_IP, elmt_Mp_production_elmt_n)) / (Functions.pow(elmt_Mp_production_elmt_K_IP, elmt_Mp_production_elmt_n) + Functions.pow(elmt_Cn, elmt_Mp_production_elmt_n)));
        elmt_Mt_production = ((elmt_Cell * elmt_Mt_production_elmt_V_sT * Functions.pow(elmt_Mt_production_elmt_K_IT, elmt_Mt_production_elmt_n)) / (Functions.pow(elmt_Mt_production_elmt_K_IT, elmt_Mt_production_elmt_n) + Functions.pow(elmt_Cn, elmt_Mt_production_elmt_n)));
        elmt_T0_degradation = (elmt_Cell * elmt_T0_degradation_elmt_k_d * elmt_T0);
        elmt_PTnucl_complex_degradation = (elmt_compartment_0000002 * elmt_PTnucl_complex_degradation_elmt_k_dN * elmt_Cn);
        elmt_T1_to_T0 = ((elmt_Cell * elmt_T1_to_T0_elmt_V_2T * elmt_T1) / (elmt_T1_to_T0_elmt_K_2T + elmt_T1));
        elmt_T1_degradation = (elmt_Cell * elmt_T1_degradation_elmt_k_d * elmt_T1);
        elmt_P2_to_P1 = ((elmt_Cell * elmt_P2_to_P1_elmt_V_4P * elmt_P2) / (elmt_P2_to_P1_elmt_K_4P + elmt_P2));
        elmt_T2_to_T1 = ((elmt_Cell * elmt_T2_to_T1_elmt_V_4T * elmt_T2) / (elmt_T2_to_T1_elmt_K_4T + elmt_T2));
        elmt_PT_complex_degradation = (elmt_Cell * elmt_PT_complex_degradation_elmt_k_dC * elmt_CC);
        elmt_P0_production = (elmt_Cell * elmt_P0_production_elmt_k_sP * elmt_Mp);
        elmt_Mt_degradation = ((elmt_Cell * elmt_Mt_degradation_elmt_k_d * elmt_Mt) + ((elmt_Cell * elmt_V_mT * elmt_Mt) / (elmt_Mt_degradation_elmt_K_mT + elmt_Mt)));
        elmt_P0_to_P1 = ((elmt_Cell * elmt_P0_to_P1_elmt_V_1P * elmt_P0) / (elmt_P0_to_P1_elmt_K1_P + elmt_P0));
        elmt_T0_production = (elmt_Cell * elmt_T0_production_elmt_k_sT * elmt_Mt);
        elmt_T0_to_T1 = ((elmt_Cell * elmt_T0_to_T1_elmt_V_1T * elmt_T0) / (elmt_T0_to_T1_elmt_K_1T + elmt_T0));
        elmt_PT_complex_nucleation = ((elmt_Cell * elmt_PT_complex_nucleation_elmt_k1 * elmt_CC) - (elmt_compartment_0000002 * elmt_PT_complex_nucleation_elmt_k2 * elmt_Cn));
        der(elmt_product30) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;

end Reactions;
