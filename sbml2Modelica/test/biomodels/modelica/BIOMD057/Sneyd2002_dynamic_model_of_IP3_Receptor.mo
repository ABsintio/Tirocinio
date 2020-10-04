within BIOMD057;
model Sneyd2002_dynamic_model_of_IP3_Receptor "Sneyd2002_IP3_Receptor" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_O = elmt_compartment.elmt_O;
        Params.elmt_A = elmt_compartment.elmt_A;
        Reacs.elmt_O = elmt_compartment.elmt_O;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Phi1 = Params.elmt_Phi1;
        Reacs.elmt_Phi2 = Params.elmt_Phi2;
        Reacs.elmt_Phi3 = Params.elmt_Phi3;
        Reacs.elmt_I2 = elmt_compartment.elmt_I2;
        Reacs.elmt_Phi4 = Params.elmt_Phi4;
        Reacs.elmt_Phi5 = Params.elmt_Phi5;
        Reacs.elmt_A = elmt_compartment.elmt_A;
        Reacs.elmt_I1 = elmt_compartment.elmt_I1;
        Reacs.elmt_Phi_minus2 = Params.elmt_Phi_minus2;
        Reacs.elmt_Phi_minus4 = Params.elmt_Phi_minus4;
        Reacs.elmt_S = elmt_compartment.elmt_S;
        Reacs.elmt_R = elmt_compartment.elmt_R;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_v5 = Reacs.elmt_v5;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;

end Sneyd2002_dynamic_model_of_IP3_Receptor;
