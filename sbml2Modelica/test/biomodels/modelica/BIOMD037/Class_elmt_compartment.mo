within BIOMD037;
class Class_elmt_compartment

    input Real elmt_Transducer_activation;
    input Real elmt_product11;
    input Real elmt_Photoreceptor_inactivation;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_S_generation;
    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_Photoreceptor_decay;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_preS_formation;
    input Real elmt_V_degradation;
    input Real elmt_reactant8;
    input Real elmt_product20;
    input Real elmt_product1;
    input Real elmt_S_degradation;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_S_formation;
    input Real elmt_Photoreceptor_activation;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_reactant12;
    input Real elmt_V_formation;
    input Real elmt_Glucose_sensor_inactivation;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product14;
    input Real elmt_Transducer_inactivation;

    Real elmt_compartment(unit = "") "";
    Real elmt_Gluc_conc(unit = "");
    Real elmt_Gluc_amount(unit = "");
    Real elmt_Gluc(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Xi_conc(unit = "");
    Real elmt_Xi_amount(unit = "");
    Real elmt_Xi(unit = "") "";
    Real elmt_Pr_conc(unit = "");
    Real elmt_Pr_amount(unit = "");
    Real elmt_Pr(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_preS_conc(unit = "");
    Real elmt_preS_amount(unit = "");
    Real elmt_preS(unit = "") "";
    Real elmt_Yi_conc(unit = "");
    Real elmt_Yi_amount(unit = "");
    Real elmt_Yi(unit = "") "";
    Real elmt_V_conc(unit = "");
    Real elmt_V_amount(unit = "");
    Real elmt_V(unit = "") "";
    Real elmt_Xa_conc(unit = "");
    Real elmt_Xa_amount(unit = "");
    Real elmt_Xa(unit = "") "";
    Real elmt_S_conc(unit = "");
    Real elmt_S_amount(unit = "");
    Real elmt_S(unit = "") "";
    Real elmt_Pi_conc(unit = "");
    Real elmt_Pi_amount(unit = "");
    Real elmt_Pi(unit = "") "";
    Real elmt_Pfr_conc(unit = "");
    Real elmt_Pfr_amount(unit = "");
    Real elmt_Pfr(unit = "") "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_prepreS_conc(unit = "");
    Real elmt_prepreS_amount(unit = "");
    Real elmt_prepreS(unit = "") "";
    Real elmt_Ya_conc(unit = "");
    Real elmt_Ya_amount(unit = "");
    Real elmt_Ya(unit = "") "";

    initial equation
        elmt_compartment = 1.0;
        elmt_Gluc_conc = (0.0 / elmt_compartment);
        elmt_Xi_conc = (6.0 / elmt_compartment);
        elmt_Pr_conc = (0.0 / elmt_compartment);
        elmt_preS_conc = (0.0 / elmt_compartment);
        elmt_Yi_conc = (0.0 / elmt_compartment);
        elmt_V_conc = (30.0 / elmt_compartment);
        elmt_Xa_conc = (0.0 / elmt_compartment);
        elmt_S_conc = (0.0 / elmt_compartment);
        elmt_Pi_conc = (0.0 / elmt_compartment);
        elmt_Pfr_conc = (10.0 / elmt_compartment);
        elmt_prepreS_conc = (200.0 / elmt_compartment);
        elmt_Ya_conc = (0.9 / elmt_compartment);


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_Gluc = elmt_Gluc_conc;
        elmt_Xi = elmt_Xi_conc;
        elmt_Pr = elmt_Pr_conc;
        elmt_preS = elmt_preS_conc;
        elmt_Yi = elmt_Yi_conc;
        elmt_V = elmt_V_conc;
        elmt_Xa = elmt_Xa_conc;
        elmt_S = elmt_S_conc;
        elmt_Pi = elmt_Pi_conc;
        elmt_Pfr = elmt_Pfr_conc;
        elmt_prepreS = elmt_prepreS_conc;
        elmt_Ya = elmt_Ya_conc;
        der(elmt_Gluc_amount) = 0;
        der(elmt_Xi_amount) = ((- (elmt_Transducer_activation * elmt_reactant4)) + (elmt_Transducer_inactivation * elmt_product7));
        der(elmt_Pr_amount) = ((- (elmt_Photoreceptor_decay * elmt_reactant19)) + (elmt_Photoreceptor_activation * elmt_product1) + (- (elmt_Photoreceptor_inactivation * elmt_reactant2)));
        der(elmt_preS_amount) = ((elmt_preS_formation * elmt_product9) + (- (elmt_S_generation * elmt_reactant10)));
        der(elmt_Yi_amount) = (elmt_Glucose_sensor_inactivation * elmt_product14);
        der(elmt_V_amount) = ((- (elmt_V_degradation * elmt_reactant18)) + (elmt_V_formation * elmt_product16));
        der(elmt_Xa_amount) = ((elmt_Transducer_activation * elmt_product5) + (- (elmt_Transducer_inactivation * elmt_reactant6)));
        der(elmt_S_amount) = ((- (elmt_S_degradation * elmt_reactant17)) + (elmt_S_formation * elmt_product15) + (elmt_S_generation * elmt_product11));
        der(elmt_Pi_amount) = (elmt_Photoreceptor_decay * elmt_product20);
        der(elmt_Pfr_amount) = ((- (elmt_Photoreceptor_activation * elmt_reactant0)) + (elmt_Photoreceptor_inactivation * elmt_product3));
        der(elmt_prepreS_amount) = (- (elmt_preS_formation * elmt_reactant8));
        der(elmt_Ya_amount) = (- (elmt_Glucose_sensor_inactivation * elmt_reactant12));

    algorithm
        elmt_Gluc_conc := elmt_Gluc_amount / elmt_compartment;
        elmt_Xi_conc := elmt_Xi_amount / elmt_compartment;
        elmt_Pr_conc := elmt_Pr_amount / elmt_compartment;
        elmt_preS_conc := elmt_preS_amount / elmt_compartment;
        elmt_Yi_conc := elmt_Yi_amount / elmt_compartment;
        elmt_V_conc := elmt_V_amount / elmt_compartment;
        elmt_Xa_conc := elmt_Xa_amount / elmt_compartment;
        elmt_S_conc := elmt_S_amount / elmt_compartment;
        elmt_Pi_conc := elmt_Pi_amount / elmt_compartment;
        elmt_Pfr_conc := elmt_Pfr_amount / elmt_compartment;
        elmt_prepreS_conc := elmt_prepreS_amount / elmt_compartment;
        elmt_Ya_conc := elmt_Ya_amount / elmt_compartment;
end Class_elmt_compartment;
