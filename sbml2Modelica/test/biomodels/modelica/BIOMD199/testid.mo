within BIOMD199;
model testid "Santolini2001_nNOS_Mechanism_Regulation" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_FeII_star = elmt_cytosol.elmt_FeII_star;
        Reacs.elmt_O2 = elmt_cytosol.elmt_O2;
        Reacs.elmt_FeIII_star = elmt_cytosol.elmt_FeIII_star;
        Reacs.elmt_FeII = elmt_cytosol.elmt_FeII;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_FeIII = elmt_cytosol.elmt_FeIII;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_FeII_NO = elmt_cytosol.elmt_FeII_NO;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_FeII_O2 = elmt_cytosol.elmt_FeII_O2;
        Reacs.elmt_FeIII_NO = elmt_cytosol.elmt_FeIII_NO;
        Reacs.elmt_FeII_star_O2 = elmt_cytosol.elmt_FeII_star_O2;
        Reacs.elmt_k10 = Params.elmt_k10;
        elmt_cytosol.elmt_r5 = Reacs.elmt_r5;
        elmt_cytosol.elmt_r6 = Reacs.elmt_r6;
        elmt_cytosol.elmt_r3 = Reacs.elmt_r3;
        elmt_cytosol.elmt_r4 = Reacs.elmt_r4;
        elmt_cytosol.elmt_product11 = Reacs.elmt_product11;
        elmt_cytosol.elmt_r1 = Reacs.elmt_r1;
        elmt_cytosol.elmt_r2 = Reacs.elmt_r2;
        elmt_cytosol.elmt_product31 = Reacs.elmt_product31;
        elmt_cytosol.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_cytosol.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cytosol.elmt_r9 = Reacs.elmt_r9;
        elmt_cytosol.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cytosol.elmt_product27 = Reacs.elmt_product27;
        elmt_cytosol.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cytosol.elmt_product24 = Reacs.elmt_product24;
        elmt_cytosol.elmt_product8 = Reacs.elmt_product8;
        elmt_cytosol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cytosol.elmt_product6 = Reacs.elmt_product6;
        elmt_cytosol.elmt_product20 = Reacs.elmt_product20;
        elmt_cytosol.elmt_r10 = Reacs.elmt_r10;
        elmt_cytosol.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cytosol.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cytosol.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cytosol.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cytosol.elmt_product2 = Reacs.elmt_product2;
        elmt_cytosol.elmt_rG = Reacs.elmt_rG;
        elmt_cytosol.elmt_rF = Reacs.elmt_rF;
        elmt_cytosol.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cytosol.elmt_product15 = Reacs.elmt_product15;
        elmt_cytosol.elmt_product17 = Reacs.elmt_product17;

end testid;
