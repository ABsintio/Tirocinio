within BIOMD084;
model S2MModel "Hornberg2005_ERKcascade" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_x1p = elmt_compartment.elmt_x1p;
        Reacs.elmt_Rin = elmt_compartment.elmt_Rin;
        Reacs.elmt_x2p = elmt_compartment.elmt_x2p;
        Reacs.elmt_x3p = elmt_compartment.elmt_x3p;
        Reacs.elmt_x3 = elmt_compartment.elmt_x3;
        Reacs.elmt_x1 = elmt_compartment.elmt_x1;
        Reacs.elmt_x2 = elmt_compartment.elmt_x2;
        Reacs.elmt_R = elmt_compartment.elmt_R;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_v7 = Reacs.elmt_v7;
        elmt_compartment.elmt_v8 = Reacs.elmt_v8;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_v5 = Reacs.elmt_v5;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_v6 = Reacs.elmt_v6;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;

end S2MModel;
