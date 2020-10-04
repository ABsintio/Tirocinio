within BIOMD388;
model S2MModel "Arnold2011_Zhu2009_CalvinCycle" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_chloroplast elmt_chloroplast;

    equation
        Reacs.elmt_GAP = elmt_chloroplast.elmt_GAP;
        Reacs.elmt_DPGA = elmt_chloroplast.elmt_DPGA;
        Reacs.elmt_Ru5P = elmt_chloroplast.elmt_Ru5P;
        Reacs.elmt_ATP = elmt_chloroplast.elmt_ATP;
        Reacs.elmt_RuBP = elmt_chloroplast.elmt_RuBP;
        Reacs.elmt_chloroplast = elmt_chloroplast.elmt_chloroplast;
        Reacs.elmt_PGA = elmt_chloroplast.elmt_PGA;
        elmt_chloroplast.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_chloroplast.elmt_product7 = Reacs.elmt_product7;
        elmt_chloroplast.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_chloroplast.elmt_PGA2sink = Reacs.elmt_PGA2sink;
        elmt_chloroplast.elmt_product10 = Reacs.elmt_product10;
        elmt_chloroplast.elmt_RuBisCO = Reacs.elmt_RuBisCO;
        elmt_chloroplast.elmt_GAP2Ru5P = Reacs.elmt_GAP2Ru5P;
        elmt_chloroplast.elmt_product1 = Reacs.elmt_product1;
        elmt_chloroplast.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_chloroplast.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_chloroplast.elmt_product5 = Reacs.elmt_product5;
        elmt_chloroplast.elmt_GAP_DH = Reacs.elmt_GAP_DH;
        elmt_chloroplast.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_chloroplast.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_chloroplast.elmt_GAP2sink = Reacs.elmt_GAP2sink;
        elmt_chloroplast.elmt_Ru5P_K = Reacs.elmt_Ru5P_K;
        elmt_chloroplast.elmt_PGA_K = Reacs.elmt_PGA_K;
        elmt_chloroplast.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_chloroplast.elmt_product13 = Reacs.elmt_product13;

end S2MModel;
