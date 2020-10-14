within BIOMD296;
model blub "Balagaddé2008_E_coli_Predator_Prey" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_environment elmt_environment;

    equation
        Params.elmt_IPTG = elmt_environment.elmt_IPTG;
        Reacs.elmt_K1 = Params.elmt_K1;
        Reacs.elmt_d1 = Params.elmt_d1;
        Reacs.elmt_C1 = elmt_environment.elmt_C1;
        Reacs.elmt_d2 = Params.elmt_d2;
        Reacs.elmt_kA2 = Params.elmt_kA2;
        Reacs.elmt_Cm = Params.elmt_Cm;
        Reacs.elmt_D = Params.elmt_D;
        Reacs.elmt_kA1 = Params.elmt_kA1;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_kc2 = Params.elmt_kc2;
        Reacs.elmt_kc1 = Params.elmt_kc1;
        Reacs.elmt_A2 = elmt_environment.elmt_A2;
        Reacs.elmt_C2 = elmt_environment.elmt_C2;
        Reacs.elmt_A1 = elmt_environment.elmt_A1;
        Reacs.elmt_environment = elmt_environment.elmt_environment;
        Reacs.elmt_dAA2 = Params.elmt_dAA2;
        Reacs.elmt_dAA1 = Params.elmt_dAA1;
        elmt_environment.elmt_product9 = Reacs.elmt_product9;
        elmt_environment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_environment.elmt_J0 = Reacs.elmt_J0;
        elmt_environment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_environment.elmt_J7 = Reacs.elmt_J7;
        elmt_environment.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_environment.elmt_product1 = Reacs.elmt_product1;
        elmt_environment.elmt_J5 = Reacs.elmt_J5;
        elmt_environment.elmt_J6 = Reacs.elmt_J6;
        elmt_environment.elmt_J3 = Reacs.elmt_J3;
        elmt_environment.elmt_product5 = Reacs.elmt_product5;
        elmt_environment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_environment.elmt_J4 = Reacs.elmt_J4;
        elmt_environment.elmt_J1 = Reacs.elmt_J1;
        elmt_environment.elmt_J2 = Reacs.elmt_J2;
        elmt_environment.elmt_product13 = Reacs.elmt_product13;

end blub;
