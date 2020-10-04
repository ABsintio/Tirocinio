within BIOMD039;
model Marhl_Calcium_Oscillations_role_of_mitochondria_and_cytosolic_proteins "Marhl2000_CaOscillations" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cytosol elmt_Cytosol;
    Class_elmt_Endoplasmic_Reticulum elmt_Endoplasmic_Reticulum;
    Class_elmt_Mitochondria elmt_Mitochondria;

    equation
        Reacs.elmt_CaPr = elmt_Cytosol.elmt_CaPr;
        Reacs.elmt_Ca_cyt = elmt_Cytosol.elmt_Ca_cyt;
        Reacs.elmt_Cytosol = elmt_Cytosol.elmt_Cytosol;
        Reacs.elmt_Pr = elmt_Cytosol.elmt_Pr;
        Reacs.elmt_Endoplasmic_Reticulum = elmt_Endoplasmic_Reticulum.elmt_Endoplasmic_Reticulum;
        Reacs.elmt_CaM = elmt_Mitochondria.elmt_CaM;
        Reacs.elmt_Mitochondria = elmt_Mitochondria.elmt_Mitochondria;
        Reacs.elmt_CaER = elmt_Endoplasmic_Reticulum.elmt_CaER;
        elmt_Endoplasmic_Reticulum.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Endoplasmic_Reticulum.elmt_v5 = Reacs.elmt_v5;
        elmt_Endoplasmic_Reticulum.elmt_v3 = Reacs.elmt_v3;
        elmt_Endoplasmic_Reticulum.elmt_v1 = Reacs.elmt_v1;
        elmt_Endoplasmic_Reticulum.elmt_product5 = Reacs.elmt_product5;
        elmt_Endoplasmic_Reticulum.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Mitochondria.elmt_product9 = Reacs.elmt_product9;
        elmt_Mitochondria.elmt_v9 = Reacs.elmt_v9;
        elmt_Mitochondria.elmt_v7 = Reacs.elmt_v7;
        elmt_Mitochondria.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Cytosol.elmt_v12 = Reacs.elmt_v12;
        elmt_Cytosol.elmt_v11 = Reacs.elmt_v11;
        elmt_Cytosol.elmt_v9 = Reacs.elmt_v9;
        elmt_Cytosol.elmt_product7 = Reacs.elmt_product7;
        elmt_Cytosol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cytosol.elmt_product12 = Reacs.elmt_product12;
        elmt_Cytosol.elmt_v7 = Reacs.elmt_v7;
        elmt_Cytosol.elmt_product11 = Reacs.elmt_product11;
        elmt_Cytosol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Cytosol.elmt_v5 = Reacs.elmt_v5;
        elmt_Cytosol.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_Cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_Cytosol.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Cytosol.elmt_product3 = Reacs.elmt_product3;
        elmt_Cytosol.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_Cytosol.elmt_v3 = Reacs.elmt_v3;
        elmt_Cytosol.elmt_product15 = Reacs.elmt_product15;
        elmt_Cytosol.elmt_v1 = Reacs.elmt_v1;

end Marhl_Calcium_Oscillations_role_of_mitochondria_and_cytosolic_proteins;
