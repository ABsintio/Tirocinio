within BIOMD499;
model Model_1 "Vizan2013 - TGF pathway long term signaling" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;

    equation
        Params.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Params.elmt_species_14 = elmt_compartment_1.elmt_species_14;
        elmt_compartment_1.elmt_parameter_11 = Params.elmt_parameter_11;
        elmt_compartment_1.elmt_parameter_9 = Params.elmt_parameter_9;
        elmt_compartment_1.elmt_parameter_8 = Params.elmt_parameter_8;
        elmt_compartment_1.elmt_parameter_7 = Params.elmt_parameter_7;
        elmt_compartment_1.elmt_parameter_19 = Params.elmt_parameter_19;
        elmt_compartment_1.elmt_parameter_18 = Params.elmt_parameter_18;
        elmt_compartment_1.elmt_parameter_17 = Params.elmt_parameter_17;
        elmt_compartment_1.elmt_parameter_16 = Params.elmt_parameter_16;
        elmt_compartment_1.elmt_parameter_15 = Params.elmt_parameter_15;
        elmt_compartment_1.elmt_parameter_14 = Params.elmt_parameter_14;
        elmt_compartment_1.elmt_parameter_13 = Params.elmt_parameter_13;
        elmt_compartment_1.elmt_parameter_12 = Params.elmt_parameter_12;
        elmt_compartment_1.elmt_parameter_6 = Params.elmt_parameter_6;
        elmt_compartment_1.elmt_parameter_5 = Params.elmt_parameter_5;
        elmt_compartment_1.elmt_parameter_4 = Params.elmt_parameter_4;
        elmt_compartment_1.elmt_parameter_3 = Params.elmt_parameter_3;
        elmt_compartment_1.elmt_parameter_2 = Params.elmt_parameter_2;
        elmt_compartment_1.elmt_parameter_1 = Params.elmt_parameter_1;
        elmt_compartment_1.elmt_parameter_22 = Params.elmt_parameter_22;
        elmt_compartment_1.elmt_parameter_21 = Params.elmt_parameter_21;
        elmt_compartment_1.elmt_parameter_28 = Params.elmt_parameter_28;
        elmt_compartment_1.elmt_parameter_27 = Params.elmt_parameter_27;
        elmt_compartment_1.elmt_parameter_26 = Params.elmt_parameter_26;
        elmt_compartment_1.elmt_parameter_25 = Params.elmt_parameter_25;
        elmt_compartment_1.elmt_parameter_24 = Params.elmt_parameter_24;
        elmt_compartment_1.elmt_parameter_23 = Params.elmt_parameter_23;

end Model_1;
