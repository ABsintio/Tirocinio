within BIOMD357;
model Model_1 "Lee2010_ThrombinActivation_OneForm_reduced" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_k4a = Params.elmt_k4a;
        Reacs.elmt_j3a = Params.elmt_j3a;
        Reacs.elmt_P = elmt_compartment.elmt_P;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_M = elmt_compartment.elmt_M;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_k7a = Params.elmt_k7a;
        Reacs.elmt_E_M = elmt_compartment.elmt_E_M;
        Reacs.elmt_k8a = Params.elmt_k8a;
        Reacs.elmt_j7a = Params.elmt_j7a;
        Reacs.elmt_P2 = elmt_compartment.elmt_P2;
        Reacs.elmt_E = elmt_compartment.elmt_E;
        Reacs.elmt_j5 = Params.elmt_j5;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_j1 = Params.elmt_j1;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3a = Params.elmt_k3a;
        Reacs.elmt_E_P_1 = elmt_compartment.elmt_E_P_1;
        Reacs.elmt_E_P_2 = elmt_compartment.elmt_E_P_2;
        Reacs.elmt_E_P2 = elmt_compartment.elmt_E_P2;
        elmt_compartment.elmt_r7 = Reacs.elmt_r7;
        elmt_compartment.elmt_r8 = Reacs.elmt_r8;
        elmt_compartment.elmt_r5 = Reacs.elmt_r5;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_r1 = Reacs.elmt_r1;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_r2 = Reacs.elmt_r2;
        elmt_compartment.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment.elmt_r9 = Reacs.elmt_r9;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_r14 = Reacs.elmt_r14;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_r12 = Reacs.elmt_r12;
        elmt_compartment.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;

end Model_1;
