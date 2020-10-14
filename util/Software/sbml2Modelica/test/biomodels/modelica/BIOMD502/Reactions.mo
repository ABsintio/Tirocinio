within BIOMD502;
class Reactions

    input Real elmt_RPE1;
    input Real elmt_GAP;
    input Real elmt_Kr5p_TAL;
    input Real elmt_NADP;
    input Real elmt_RKI1;
    input Real elmt_SOL3;
    input Real elmt_NQM1;
    input Real elmt_cell;
    input Real elmt_Ke4p_TAL;
    input Real elmt_R5P;
    input Real elmt_Kgap_TAL;
    input Real elmt_S7P;
    input Real elmt_Kx5p_TAL;
    input Real elmt_ZWF1;
    input Real elmt_X5P;
    input Real elmt_Kf6p_TAL;
    input Real elmt_F6P;
    input Real elmt_NADPH;
    input Real elmt_G6L;
    input Real elmt_GND1;
    input Real elmt_GND2;
    input Real elmt_Ru5P;
    input Real elmt_P6G;
    input Real elmt_E4P;
    input Real elmt_G6P;
    input Real elmt_TKL1;
    input Real elmt_Ks7p_TAL;
    input Real elmt_TAL1;

    Real elmt_RPE(unit = "") "RPE";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_RPE_elmt_Keq(unit "") = 1.4 "";
    parameter Real elmt_RPE_elmt_Kru5p(unit "m-3.0.") = 5.97 "";
    parameter Real elmt_RPE_elmt_kcat(unit "s-1.0") = 4020.0 "";
    parameter Real elmt_RPE_elmt_Kx5p(unit "m-3.0.") = 7.7 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_RKI(unit = "") "RKI";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_RKI_elmt_Keq(unit "") = 4.0 "";
    parameter Real elmt_RKI_elmt_Kr5p(unit "m-3.0.") = 5.7 "";
    parameter Real elmt_RKI_elmt_Kru5p(unit "m-3.0.") = 2.47 "";
    parameter Real elmt_RKI_elmt_Kiru5p(unit "m-3.0.") = 9.88 "";
    parameter Real elmt_RKI_elmt_kcat(unit "s-1.0") = 335.0 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_SOL(unit = "") "SOL";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SOL_elmt_Kp6g(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_SOL_elmt_Kg6l(unit "m-3.0.") = 0.8 "";
    parameter Real elmt_SOL_elmt_kcat(unit "s-1.0") = 4.3 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_R5P_sink(unit = "") "R5P sink";
    parameter Real elmt_R5P_sink_elmt_k(unit "s-1.0") = 1.0 "";
    Real elmt_reactant29 "";
    Real elmt_TAL(unit = "") "TAL";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TAL_elmt_Keq(unit "") = 1.05 "";
    parameter Real elmt_TAL_elmt_Ks7p_NQM1(unit "m-3.0.") = 0.786 "";
    parameter Real elmt_TAL_elmt_kcat_NQM1(unit "s-1.0") = 0.694 "";
    parameter Real elmt_TAL_elmt_Kgap_NQM1(unit "m-3.0.") = 0.272 "";
    parameter Real elmt_TAL_elmt_Ks7p_TAL1(unit "m-3.0.") = 0.786 "";
    parameter Real elmt_TAL_elmt_Kf6p_TAL1(unit "m-3.0.") = 1.44 "";
    parameter Real elmt_TAL_elmt_Kgap_TAL1(unit "m-3.0.") = 0.272 "";
    parameter Real elmt_TAL_elmt_Ke4p_NQM1(unit "m-3.0.") = 0.305 "";
    parameter Real elmt_TAL_elmt_kcat_TAL1(unit "s-1.0") = 0.694 "";
    parameter Real elmt_TAL_elmt_Ke4p_TAL1(unit "m-3.0.") = 0.362 "";
    parameter Real elmt_TAL_elmt_Kf6p_NQM1(unit "m-3.0.") = 1.04 "";
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_TKL_R5P(unit = "") "TKL (R5P:S7P)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TKL_R5P_elmt_Keq(unit "") = 1.2 "";
    parameter Real elmt_TKL_R5P_elmt_kcat(unit "s-1.0") = 40.5 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_GND(unit = "") "GND";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_GND_elmt_Kp6g_GND1(unit "m-3.0.") = 0.062 "";
    parameter Real elmt_GND_elmt_kcat_GND1(unit "s-1.0") = 28.0 "";
    parameter Real elmt_GND_elmt_Kp6g_GND2(unit "m-3.0.") = 0.115 "";
    parameter Real elmt_GND_elmt_Kru5p_GND2(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_GND_elmt_Knadp_GND1(unit "m-3.0.") = 0.094 "";
    parameter Real elmt_GND_elmt_Knadp_GND2(unit "m-3.0.") = 0.094 "";
    parameter Real elmt_GND_elmt_Knadph_GND1(unit "m-3.0.") = 0.055 "";
    parameter Real elmt_GND_elmt_Knadph_GND2(unit "m-3.0.") = 0.055 "";
    parameter Real elmt_GND_elmt_Kru5p_GND1(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_GND_elmt_kcat_GND2(unit "s-1.0") = 27.3 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_E4P_sink(unit = "") "E4P sink";
    parameter Real elmt_E4P_sink_elmt_k(unit "s-1.0") = 1.0 "";
    Real elmt_reactant28 "";
    Real elmt_TKL_E4P(unit = "") "TKL (E4P:F6P)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TKL_E4P_elmt_Keq(unit "") = 10.0 "";
    parameter Real elmt_TKL_E4P_elmt_kcat(unit "s-1.0") = 47.1 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_NADPH_oxidase(unit = "") "NADPH oxidase";
    parameter Real elmt_NADPH_oxidase_elmt_k(unit "s-1.0") = 1.0 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_ZWF(unit = "") "ZWF";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ZWF_elmt_Kg6p(unit "m-3.0.") = 0.042 "";
    parameter Real elmt_ZWF_elmt_Knadp(unit "m-3.0.") = 0.045 "";
    parameter Real elmt_ZWF_elmt_Kg6l(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_ZWF_elmt_Knadph(unit "m-3.0.") = 0.017 "";
    parameter Real elmt_ZWF_elmt_kcat(unit "s-1.0") = 189.0 "";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";


    initial equation
        elmt_product12 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product13 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_RPE = (((elmt_cell * elmt_RPE1 * elmt_RPE_elmt_kcat * (elmt_Ru5P - (elmt_X5P / elmt_RPE_elmt_Keq))) / elmt_RPE_elmt_Kru5p) / (1.0 + (elmt_Ru5P / elmt_RPE_elmt_Kru5p) + (elmt_X5P / elmt_RPE_elmt_Kx5p)));
        elmt_RKI = (((elmt_cell * elmt_RKI1 * elmt_RKI_elmt_kcat * (elmt_Ru5P - (elmt_R5P / elmt_RKI_elmt_Keq))) / elmt_RKI_elmt_Kru5p) / (1.0 + (elmt_Ru5P / elmt_RKI_elmt_Kru5p) + (elmt_R5P / elmt_RKI_elmt_Kr5p)));
        elmt_SOL = (((elmt_cell * elmt_SOL3 * elmt_SOL_elmt_kcat * elmt_G6L) / elmt_SOL_elmt_Kg6l) / (1.0 + (elmt_G6L / elmt_SOL_elmt_Kg6l) + (elmt_P6G / elmt_SOL_elmt_Kp6g)));
        elmt_R5P_sink = (elmt_cell * elmt_R5P_sink_elmt_k * elmt_R5P);
        elmt_TAL = (elmt_cell * ((((elmt_TAL1 * elmt_TAL_elmt_kcat_TAL1 * ((elmt_GAP * elmt_S7P) - ((elmt_F6P * elmt_E4P) / elmt_TAL_elmt_Keq))) / (elmt_TAL_elmt_Kgap_TAL1 * elmt_TAL_elmt_Ks7p_TAL1)) / ((1.0 + (elmt_GAP / elmt_TAL_elmt_Kgap_TAL1) + (elmt_F6P / elmt_TAL_elmt_Kf6p_TAL1)) * (1.0 + (elmt_S7P / elmt_TAL_elmt_Ks7p_TAL1) + (elmt_E4P / elmt_TAL_elmt_Ke4p_TAL1)))) + (((elmt_NQM1 * elmt_TAL_elmt_kcat_NQM1 * ((elmt_GAP * elmt_S7P) - ((elmt_F6P * elmt_E4P) / elmt_TAL_elmt_Keq))) / (elmt_TAL_elmt_Kgap_NQM1 * elmt_TAL_elmt_Ks7p_NQM1)) / ((1.0 + (elmt_GAP / elmt_TAL_elmt_Kgap_NQM1) + (elmt_F6P / elmt_TAL_elmt_Kf6p_NQM1)) * (1.0 + (elmt_S7P / elmt_TAL_elmt_Ks7p_NQM1) + (elmt_E4P / elmt_TAL_elmt_Ke4p_NQM1))))));
        elmt_TKL_R5P = (((elmt_cell * elmt_TKL1 * elmt_TKL_R5P_elmt_kcat * ((elmt_X5P * elmt_R5P) - ((elmt_GAP * elmt_S7P) / elmt_TKL_R5P_elmt_Keq))) / (elmt_Kx5p_TAL * elmt_Kr5p_TAL)) / ((1.0 + (elmt_X5P / elmt_Kx5p_TAL) + (elmt_GAP / elmt_Kgap_TAL)) * (1.0 + (elmt_E4P / elmt_Ke4p_TAL) + (elmt_F6P / elmt_Kf6p_TAL) + (elmt_R5P / elmt_Kr5p_TAL) + (elmt_S7P / elmt_Ks7p_TAL))));
        elmt_GND = (elmt_cell * ((((elmt_GND1 * elmt_GND_elmt_kcat_GND1 * elmt_P6G * elmt_NADP) / (elmt_GND_elmt_Kp6g_GND1 * elmt_GND_elmt_Knadp_GND1)) / ((1.0 + (elmt_P6G / elmt_GND_elmt_Kp6g_GND1) + (elmt_Ru5P / elmt_GND_elmt_Kru5p_GND1)) * (1.0 + (elmt_NADP / elmt_GND_elmt_Knadp_GND1) + (elmt_NADPH / elmt_GND_elmt_Knadph_GND1)))) + ((elmt_GND2 * elmt_GND_elmt_kcat_GND2 * elmt_P6G * elmt_NADP) / ((1.0 + (elmt_P6G / elmt_GND_elmt_Kp6g_GND2) + (elmt_Ru5P / elmt_GND_elmt_Kru5p_GND2)) * (1.0 + (elmt_NADP / elmt_GND_elmt_Knadp_GND2) + (elmt_NADPH / elmt_GND_elmt_Knadph_GND2))))));
        elmt_E4P_sink = (elmt_cell * elmt_E4P_sink_elmt_k * elmt_E4P);
        elmt_TKL_E4P = (((elmt_cell * elmt_TKL1 * elmt_TKL_E4P_elmt_kcat * ((elmt_X5P * elmt_E4P) - ((elmt_GAP * elmt_F6P) / elmt_TKL_E4P_elmt_Keq))) / (elmt_Kx5p_TAL * elmt_Ke4p_TAL)) / ((1.0 + (elmt_X5P / elmt_Kx5p_TAL) + (elmt_GAP / elmt_Kgap_TAL)) * (1.0 + (elmt_E4P / elmt_Ke4p_TAL) + (elmt_F6P / elmt_Kf6p_TAL) + (elmt_R5P / elmt_Kr5p_TAL) + (elmt_S7P / elmt_Ks7p_TAL))));
        elmt_NADPH_oxidase = (elmt_cell * elmt_NADPH_oxidase_elmt_k * elmt_NADPH);
        elmt_ZWF = (((elmt_cell * elmt_ZWF1 * elmt_ZWF_elmt_kcat * elmt_G6P * elmt_NADP) / (elmt_ZWF_elmt_Kg6p * elmt_ZWF_elmt_Knadp)) / ((1.0 + (elmt_G6P / elmt_ZWF_elmt_Kg6p) + (elmt_G6L / elmt_ZWF_elmt_Kg6l)) * (1.0 + (elmt_NADP / elmt_ZWF_elmt_Knadp) + (elmt_NADPH / elmt_ZWF_elmt_Knadph))));
        der(elmt_product12) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product13) = 0;
        der(elmt_product17) = 0;

end Reactions;
