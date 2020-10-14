within BIOMD383;
model Model_1 "Arnold2011_Farquhar1980_RuBisCO-CalvinCycle" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_chloroplast elmt_chloroplast;

    equation
        Params.elmt_O2 = elmt_chloroplast.elmt_O2;
        Params.elmt_CO2 = elmt_chloroplast.elmt_CO2;
        Reacs.elmt_Nt = Params.elmt_Nt;
        Reacs.elmt_O2 = elmt_chloroplast.elmt_O2;
        Reacs.elmt_Ko = Params.elmt_Ko;
        Reacs.elmt_phi = Params.elmt_phi;
        Reacs.elmt_j = Params.elmt_j;
        Reacs.elmt_NADP = elmt_chloroplast.elmt_NADP;
        Reacs.elmt_NADPH = elmt_chloroplast.elmt_NADPH;
        Reacs.elmt_E = Params.elmt_E;
        Reacs.elmt_CO2 = elmt_chloroplast.elmt_CO2;
        Reacs.elmt_Rp = Params.elmt_Rp;
        Reacs.elmt_RuBP = elmt_chloroplast.elmt_RuBP;
        Reacs.elmt_chloroplast = elmt_chloroplast.elmt_chloroplast;
        Reacs.elmt_kc = Params.elmt_kc;
        Reacs.elmt_Kc = Params.elmt_Kc;
        Reacs.elmt_PGA = elmt_chloroplast.elmt_PGA;
        elmt_chloroplast.elmt_PGA_prod_Vo = Reacs.elmt_PGA_prod_Vo;
        elmt_chloroplast.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_chloroplast.elmt_Nt = Params.elmt_Nt;
        elmt_chloroplast.elmt_product7 = Reacs.elmt_product7;
        elmt_chloroplast.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_chloroplast.elmt_PGA_prod_Vc = Reacs.elmt_PGA_prod_Vc;
        elmt_chloroplast.elmt_product11 = Reacs.elmt_product11;
        elmt_chloroplast.elmt_NADPH_prod = Reacs.elmt_NADPH_prod;
        elmt_chloroplast.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_chloroplast.elmt_PGA_cons = Reacs.elmt_PGA_cons;
        elmt_chloroplast.elmt_product3 = Reacs.elmt_product3;

end Model_1;
