within BIOMD218;
model Singh2006_TCA_mtu_model2 "Singh2006_TCA_mtu_model2" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_mal = elmt_cell.elmt_mal;
        Reacs.elmt_coa = elmt_cell.elmt_coa;
        Reacs.elmt_gly = elmt_cell.elmt_gly;
        Reacs.elmt_sca = elmt_cell.elmt_sca;
        Reacs.elmt_aca = elmt_cell.elmt_aca;
        Reacs.elmt_akg = elmt_cell.elmt_akg;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_icit = elmt_cell.elmt_icit;
        Reacs.elmt_suc = elmt_cell.elmt_suc;
        Reacs.elmt_ssa = elmt_cell.elmt_ssa;
        Reacs.elmt_oaa = elmt_cell.elmt_oaa;
        Reacs.elmt_fa = elmt_cell.elmt_fa;
        Reacs.elmt_cit = elmt_cell.elmt_cit;
        elmt_cell.elmt_product30 = Reacs.elmt_product30;
        elmt_cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cell.elmt_ICL2 = Reacs.elmt_ICL2;
        elmt_cell.elmt_ICL1 = Reacs.elmt_ICL1;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_cell.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cell.elmt_ICD2 = Reacs.elmt_ICD2;
        elmt_cell.elmt_ICD1 = Reacs.elmt_ICD1;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_SSADH = Reacs.elmt_SSADH;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_CS = Reacs.elmt_CS;
        elmt_cell.elmt_product27 = Reacs.elmt_product27;
        elmt_cell.elmt_product26 = Reacs.elmt_product26;
        elmt_cell.elmt_product24 = Reacs.elmt_product24;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_MS = Reacs.elmt_MS;
        elmt_cell.elmt_SDH = Reacs.elmt_SDH;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_product23 = Reacs.elmt_product23;
        elmt_cell.elmt_MDH = Reacs.elmt_MDH;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_ScAS = Reacs.elmt_ScAS;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_FUM = Reacs.elmt_FUM;
        elmt_cell.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_SYN = Reacs.elmt_SYN;
        elmt_cell.elmt_KGD = Reacs.elmt_KGD;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;
        elmt_cell.elmt_ACN = Reacs.elmt_ACN;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;

end Singh2006_TCA_mtu_model2;
