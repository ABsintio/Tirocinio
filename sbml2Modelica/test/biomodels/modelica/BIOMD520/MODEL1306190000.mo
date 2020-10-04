within BIOMD520;
model MODEL1306190000 "Smallbone2013 - Colon Crypt cycle - Version 0" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_N1 = elmt_compartment.elmt_N1;
        Params.elmt_N2 = elmt_compartment.elmt_N2;
        Params.elmt_N0 = elmt_compartment.elmt_N0;
        Reacs.elmt_m0 = Params.elmt_m0;
        Reacs.elmt_N1 = elmt_compartment.elmt_N1;
        Reacs.elmt_N2 = elmt_compartment.elmt_N2;
        Reacs.elmt_m1 = Params.elmt_m1;
        Reacs.elmt_N0 = elmt_compartment.elmt_N0;
        Reacs.elmt_c0 = Params.elmt_c0;
        Reacs.elmt_d1 = Params.elmt_d1;
        Reacs.elmt_d2 = Params.elmt_d2;
        Reacs.elmt_b0 = Params.elmt_b0;
        Reacs.elmt_c1 = Params.elmt_c1;
        Reacs.elmt_d0 = Params.elmt_d0;
        Reacs.elmt_b1 = Params.elmt_b1;
        Reacs.elmt_a0 = Params.elmt_a0;
        Reacs.elmt_a1 = Params.elmt_a1;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_R2X = Reacs.elmt_R2X;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_R01 = Reacs.elmt_R01;
        elmt_compartment.elmt_R12 = Reacs.elmt_R12;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_R11 = Reacs.elmt_R11;
        elmt_compartment.elmt_R00 = Reacs.elmt_R00;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_R1X = Reacs.elmt_R1X;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_R0X = Reacs.elmt_R0X;

end MODEL1306190000;
