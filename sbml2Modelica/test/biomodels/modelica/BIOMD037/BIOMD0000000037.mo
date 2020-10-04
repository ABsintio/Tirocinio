within BIOMD037;
model BIOMD0000000037 "Marwan2003 - Genetics, regulatory hierarchy between genes" annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_Gluc = elmt_compartment.elmt_Gluc;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Xi = elmt_compartment.elmt_Xi;
        Reacs.elmt_Pr = elmt_compartment.elmt_Pr;
        Reacs.elmt_preS = elmt_compartment.elmt_preS;
        Reacs.elmt_V = elmt_compartment.elmt_V;
        Reacs.elmt_Xa = elmt_compartment.elmt_Xa;
        Reacs.elmt_S = elmt_compartment.elmt_S;
        Reacs.elmt_prepreS = elmt_compartment.elmt_prepreS;
        Reacs.elmt_Pfr = elmt_compartment.elmt_Pfr;
        Reacs.elmt_Ya = elmt_compartment.elmt_Ya;
        elmt_compartment.elmt_Transducer_activation = Reacs.elmt_Transducer_activation;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_Photoreceptor_inactivation = Reacs.elmt_Photoreceptor_inactivation;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_S_generation = Reacs.elmt_S_generation;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_Photoreceptor_decay = Reacs.elmt_Photoreceptor_decay;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_preS_formation = Reacs.elmt_preS_formation;
        elmt_compartment.elmt_V_degradation = Reacs.elmt_V_degradation;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_S_degradation = Reacs.elmt_S_degradation;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_S_formation = Reacs.elmt_S_formation;
        elmt_compartment.elmt_Photoreceptor_activation = Reacs.elmt_Photoreceptor_activation;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_V_formation = Reacs.elmt_V_formation;
        elmt_compartment.elmt_Glucose_sensor_inactivation = Reacs.elmt_Glucose_sensor_inactivation;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_Transducer_inactivation = Reacs.elmt_Transducer_inactivation;

end BIOMD0000000037;
