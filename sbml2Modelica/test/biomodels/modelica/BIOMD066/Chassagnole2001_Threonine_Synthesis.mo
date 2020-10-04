within BIOMD066;
model Chassagnole2001_Threonine_Synthesis "Chassagnole2001_Threonine Synthesis" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_aspp = elmt_compartment.elmt_aspp;
        Reacs.elmt_hsp = elmt_compartment.elmt_hsp;
        Reacs.elmt_nadp = elmt_compartment.elmt_nadp;
        Reacs.elmt_asa = elmt_compartment.elmt_asa;
        Reacs.elmt_phos = elmt_compartment.elmt_phos;
        Reacs.elmt_asp = elmt_compartment.elmt_asp;
        Reacs.elmt_thr = elmt_compartment.elmt_thr;
        Reacs.elmt_hs = elmt_compartment.elmt_hs;
        Reacs.elmt_nadph = elmt_compartment.elmt_nadph;
        Reacs.elmt_atp = elmt_compartment.elmt_atp;
        Reacs.elmt_adp = elmt_compartment.elmt_adp;
        elmt_compartment.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_vhk = Reacs.elmt_vhk;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment.elmt_vatpase = Reacs.elmt_vatpase;
        elmt_compartment.elmt_vtsy = Reacs.elmt_vtsy;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_vasd = Reacs.elmt_vasd;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment.elmt_vak = Reacs.elmt_vak;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_vhdh = Reacs.elmt_vhdh;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product19 = Reacs.elmt_product19;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;
        elmt_compartment.elmt_vnadph_endo = Reacs.elmt_vnadph_endo;

end Chassagnole2001_Threonine_Synthesis;
