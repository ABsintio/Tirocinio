within BIOMD023;
model Rohwer2001_Sucrose "Rohwer2001_Sucrose" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_Glcex = elmt_compartment.elmt_Glcex;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_HexP = elmt_compartment.elmt_HexP;
        Reacs.elmt_Suc = elmt_compartment.elmt_Suc;
        Reacs.elmt_UDP = elmt_compartment.elmt_UDP;
        Reacs.elmt_Suc6P = elmt_compartment.elmt_Suc6P;
        Reacs.elmt_ATP = elmt_compartment.elmt_ATP;
        Reacs.elmt_ADP = elmt_compartment.elmt_ADP;
        Reacs.elmt_phos = elmt_compartment.elmt_phos;
        Reacs.elmt_Glc = elmt_compartment.elmt_Glc;
        Reacs.elmt_Fruex = elmt_compartment.elmt_Fruex;
        Reacs.elmt_Fru = elmt_compartment.elmt_Fru;
        elmt_compartment.elmt_v9 = Reacs.elmt_v9;
        elmt_compartment.elmt_v7 = Reacs.elmt_v7;
        elmt_compartment.elmt_v8 = Reacs.elmt_v8;
        elmt_compartment.elmt_v5 = Reacs.elmt_v5;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_v6 = Reacs.elmt_v6;
        elmt_compartment.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;
        elmt_compartment.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment.elmt_v11 = Reacs.elmt_v11;
        elmt_compartment.elmt_v10 = Reacs.elmt_v10;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;

end Rohwer2001_Sucrose;
