within BIOMD060;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_Closed_state_1;
    input Real elmt_Open_state_2;
    input Real elmt_product1;
    input Real elmt_Closed_State_2;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_reactant0;

    Real elmt_compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Po2_amount(unit = "");
    Real elmt_Po2_conc(unit = "");
    Real elmt_Po2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Po1_amount(unit = "");
    Real elmt_Po1_conc(unit = "");
    Real elmt_Po1(unit = "") "Po1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pc2_amount(unit = "");
    Real elmt_Pc2_conc(unit = "");
    Real elmt_Pc2(unit = "") "Pc2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pc1_amount(unit = "");
    Real elmt_Pc1_conc(unit = "");
    Real elmt_Pc1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_Po2_amount = 0.0;
        elmt_Po1_amount = 0.0;
        elmt_Pc2_amount = 0.037;
        elmt_Pc1_amount = 0.963;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_Po2 = elmt_Po2_amount;
        elmt_Po1 = elmt_Po1_amount;
        elmt_Pc2 = elmt_Pc2_amount;
        elmt_Pc1 = elmt_Pc1_amount;
        der(elmt_Po2_amount) = (elmt_Open_state_2 * elmt_product3);
        der(elmt_Po1_amount) = ((- (elmt_Closed_state_1 * elmt_reactant0)) + (- (elmt_Open_state_2 * elmt_reactant2)) + (- (elmt_Closed_State_2 * elmt_reactant4)));
        der(elmt_Pc2_amount) = (elmt_Closed_State_2 * elmt_product5);
        der(elmt_Pc1_amount) = (elmt_Closed_state_1 * elmt_product1);

    algorithm
        elmt_Po2_conc := elmt_Po2_amount / elmt_compartment;
        elmt_Po1_conc := elmt_Po1_amount / elmt_compartment;
        elmt_Pc2_conc := elmt_Pc2_amount / elmt_compartment;
        elmt_Pc1_conc := elmt_Pc1_amount / elmt_compartment;
end Class_elmt_compartment;
