within BIOMD058;
model Bindschadler_Ca_Oscillator "Bindschadler2001_coupled_Ca_oscillators" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_c2 = elmt_compartment.elmt_c2;
        Params.elmt_c1 = elmt_compartment.elmt_c1;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Phi3_c2 = Params.elmt_Phi3_c2;
        Reacs.elmt_Phi2_c1 = Params.elmt_Phi2_c1;
        Reacs.elmt_c1 = elmt_compartment.elmt_c1;
        Reacs.elmt_Phi3_c1 = Params.elmt_Phi3_c1;
        Reacs.elmt_h1 = elmt_compartment.elmt_h1;
        Reacs.elmt_h2 = elmt_compartment.elmt_h2;
        Reacs.elmt_Phi1_c1 = Params.elmt_Phi1_c1;
        Reacs.elmt_Phi1_c2 = Params.elmt_Phi1_c2;
        Reacs.elmt_Phi2_c2 = Params.elmt_Phi2_c2;
        Reacs.elmt_Phi_minus1_c1 = Params.elmt_Phi_minus1_c1;
        Reacs.elmt_c2 = elmt_compartment.elmt_c2;
        Reacs.elmt_Phi_minus1_c2 = Params.elmt_Phi_minus1_c2;
        elmt_compartment.elmt_Jpump_Cell1 = Reacs.elmt_Jpump_Cell1;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_Jpump_Cell2 = Reacs.elmt_Jpump_Cell2;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_diffusion = Reacs.elmt_diffusion;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_Inactivated_to_S_Cell1 = Reacs.elmt_Inactivated_to_S_Cell1;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_Jreceptor_Cell2 = Reacs.elmt_Jreceptor_Cell2;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_Inactivated_to_S_Cell2 = Reacs.elmt_Inactivated_to_S_Cell2;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_Open_to_Inactivated_Cell2 = Reacs.elmt_Open_to_Inactivated_Cell2;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_Jreceptor_Cell1 = Reacs.elmt_Jreceptor_Cell1;
        elmt_compartment.elmt_Open_to_Inactivated_Cell1 = Reacs.elmt_Open_to_Inactivated_Cell1;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_Jleak_Cell2 = Reacs.elmt_Jleak_Cell2;
        elmt_compartment.elmt_Jleak_Cell1 = Reacs.elmt_Jleak_Cell1;

end Bindschadler_Ca_Oscillator;
