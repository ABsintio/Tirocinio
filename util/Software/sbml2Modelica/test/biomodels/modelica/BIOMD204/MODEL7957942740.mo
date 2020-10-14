within BIOMD204;
model MODEL7957942740 "Chickarmane2006 - Stem cell switch irreversible" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_Protein = elmt_compartment.elmt_Protein;
        Reacs.elmt_d1 = Params.elmt_d1;
        Reacs.elmt_f3 = Params.elmt_f3;
        Reacs.elmt_d2 = Params.elmt_d2;
        Reacs.elmt_f1 = Params.elmt_f1;
        Reacs.elmt_f = Params.elmt_f;
        Reacs.elmt_f2 = Params.elmt_f2;
        Reacs.elmt_k1c = Params.elmt_k1c;
        Reacs.elmt_h1 = Params.elmt_h1;
        Reacs.elmt_h2 = Params.elmt_h2;
        Reacs.elmt_k3c = Params.elmt_k3c;
        Reacs.elmt_eta3 = Params.elmt_eta3;
        Reacs.elmt_eta1 = Params.elmt_eta1;
        Reacs.elmt_OCT4 = elmt_compartment.elmt_OCT4;
        Reacs.elmt_a2 = Params.elmt_a2;
        Reacs.elmt_eta7 = Params.elmt_eta7;
        Reacs.elmt_a3 = Params.elmt_a3;
        Reacs.elmt_c2 = Params.elmt_c2;
        Reacs.elmt_eta5 = Params.elmt_eta5;
        Reacs.elmt_a1 = Params.elmt_a1;
        Reacs.elmt_c3 = Params.elmt_c3;
        Reacs.elmt_p53 = elmt_compartment.elmt_p53;
        Reacs.elmt_SOX2 = elmt_compartment.elmt_SOX2;
        Reacs.elmt_gamma4 = Params.elmt_gamma4;
        Reacs.elmt_gamma3 = Params.elmt_gamma3;
        Reacs.elmt_gamma2 = Params.elmt_gamma2;
        Reacs.elmt_gamma1 = Params.elmt_gamma1;
        Reacs.elmt_e2 = Params.elmt_e2;
        Reacs.elmt_c1 = Params.elmt_c1;
        Reacs.elmt_e1 = Params.elmt_e1;
        Reacs.elmt_k2c = Params.elmt_k2c;
        Reacs.elmt_g1 = Params.elmt_g1;
        Reacs.elmt_A = elmt_compartment.elmt_A;
        Reacs.elmt_OCT4_SOX2 = elmt_compartment.elmt_OCT4_SOX2;
        Reacs.elmt_NANOG = elmt_compartment.elmt_NANOG;
        Reacs.elmt_b3 = Params.elmt_b3;
        Reacs.elmt_b1 = Params.elmt_b1;
        Reacs.elmt_d3 = Params.elmt_d3;
        Reacs.elmt_b2 = Params.elmt_b2;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_J0 = Reacs.elmt_J0;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_J7 = Reacs.elmt_J7;
        elmt_compartment.elmt_J8 = Reacs.elmt_J8;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_J5 = Reacs.elmt_J5;
        elmt_compartment.elmt_J6 = Reacs.elmt_J6;
        elmt_compartment.elmt_J3 = Reacs.elmt_J3;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_J4 = Reacs.elmt_J4;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_J1 = Reacs.elmt_J1;
        elmt_compartment.elmt_J2 = Reacs.elmt_J2;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_J9 = Reacs.elmt_J9;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;

end MODEL7957942740;
