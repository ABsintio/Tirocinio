within BIOMD502;
model MODEL1311290000 "Messiha2013 - Pentose phosphate pathway model" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_RPE1 = elmt_cell.elmt_RPE1;
        Reacs.elmt_GAP = elmt_cell.elmt_GAP;
        Reacs.elmt_Kr5p_TAL = Params.elmt_Kr5p_TAL;
        Reacs.elmt_NADP = elmt_cell.elmt_NADP;
        Reacs.elmt_RKI1 = elmt_cell.elmt_RKI1;
        Reacs.elmt_SOL3 = elmt_cell.elmt_SOL3;
        Reacs.elmt_NQM1 = elmt_cell.elmt_NQM1;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_Ke4p_TAL = Params.elmt_Ke4p_TAL;
        Reacs.elmt_R5P = elmt_cell.elmt_R5P;
        Reacs.elmt_Kgap_TAL = Params.elmt_Kgap_TAL;
        Reacs.elmt_S7P = elmt_cell.elmt_S7P;
        Reacs.elmt_Kx5p_TAL = Params.elmt_Kx5p_TAL;
        Reacs.elmt_ZWF1 = elmt_cell.elmt_ZWF1;
        Reacs.elmt_X5P = elmt_cell.elmt_X5P;
        Reacs.elmt_Kf6p_TAL = Params.elmt_Kf6p_TAL;
        Reacs.elmt_F6P = elmt_cell.elmt_F6P;
        Reacs.elmt_NADPH = elmt_cell.elmt_NADPH;
        Reacs.elmt_G6L = elmt_cell.elmt_G6L;
        Reacs.elmt_GND1 = elmt_cell.elmt_GND1;
        Reacs.elmt_GND2 = elmt_cell.elmt_GND2;
        Reacs.elmt_Ru5P = elmt_cell.elmt_Ru5P;
        Reacs.elmt_P6G = elmt_cell.elmt_P6G;
        Reacs.elmt_E4P = elmt_cell.elmt_E4P;
        Reacs.elmt_G6P = elmt_cell.elmt_G6P;
        Reacs.elmt_TKL1 = elmt_cell.elmt_TKL1;
        Reacs.elmt_Ks7p_TAL = Params.elmt_Ks7p_TAL;
        Reacs.elmt_TAL1 = elmt_cell.elmt_TAL1;
        elmt_cell.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_cell.elmt_TAL = Reacs.elmt_TAL;
        elmt_cell.elmt_GND = Reacs.elmt_GND;
        elmt_cell.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cell.elmt_NADPH_oxidase = Reacs.elmt_NADPH_oxidase;
        elmt_cell.elmt_RPE = Reacs.elmt_RPE;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cell.elmt_TKL_R5P = Reacs.elmt_TKL_R5P;
        elmt_cell.elmt_product25 = Reacs.elmt_product25;
        elmt_cell.elmt_product24 = Reacs.elmt_product24;
        elmt_cell.elmt_E4P_sink = Reacs.elmt_E4P_sink;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_sum_NADP = Params.elmt_sum_NADP;
        elmt_cell.elmt_TKL_E4P = Reacs.elmt_TKL_E4P;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cell.elmt_SOL = Reacs.elmt_SOL;
        elmt_cell.elmt_RKI = Reacs.elmt_RKI;
        elmt_cell.elmt_R5P_sink = Reacs.elmt_R5P_sink;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_ZWF = Reacs.elmt_ZWF;

end MODEL1311290000;
