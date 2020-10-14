within BIOMD053;
model Ferreira_CML_generation "Ferreira2003_CML_generation2" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_Amadori = elmt_compartment.elmt_Amadori;
        Params.elmt_CML = elmt_compartment.elmt_CML;
        Reacs.elmt_Amadori = elmt_compartment.elmt_Amadori;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Glucose = elmt_compartment.elmt_Glucose;
        Reacs.elmt_Lysine = elmt_compartment.elmt_Lysine;
        Reacs.elmt_Schiff = elmt_compartment.elmt_Schiff;
        Reacs.elmt_Glyoxal = elmt_compartment.elmt_Glyoxal;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_v5 = Reacs.elmt_v5;
        elmt_compartment.elmt_v6 = Reacs.elmt_v6;
        elmt_compartment.elmt_v7a = Reacs.elmt_v7a;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_v1b = Reacs.elmt_v1b;
        elmt_compartment.elmt_v1a = Reacs.elmt_v1a;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_v5b = Reacs.elmt_v5b;
        elmt_compartment.elmt_v7c = Reacs.elmt_v7c;
        elmt_compartment.elmt_v7b = Reacs.elmt_v7b;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_v2b = Reacs.elmt_v2b;
        elmt_compartment.elmt_v2a = Reacs.elmt_v2a;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_product19 = Reacs.elmt_product19;

end Ferreira_CML_generation;
