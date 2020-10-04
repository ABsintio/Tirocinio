within BIOMD120;
class Class_elmt_compartment

    input Real elmt_v9;
    input Real elmt_v7;
    input Real elmt_product12;
    input Real elmt_v8;
    input Real elmt_product10;
    input Real elmt_v5;
    input Real elmt_v6;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_reactant9;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_reactant1;
    input Real elmt_v10;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_product4;
    input Real elmt_reactant11;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_product14;

    Real elmt_compartment(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_lck_total_amount(unit = "");
    Real elmt_lck_total_conc(unit = "");
    Real elmt_lck_total(unit = "") "Total kinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_phosphatase_active_amount(unit = "");
    Real elmt_phosphatase_active_conc(unit = "");
    Real elmt_phosphatase_active(unit = "") "Active phosphatase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_lck_active_amount(unit = "");
    Real elmt_lck_active_conc(unit = "");
    Real elmt_lck_active(unit = "") "Active lck";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_phosphatase_inactive_amount(unit = "");
    Real elmt_phosphatase_inactive_conc(unit = "");
    Real elmt_phosphatase_inactive(unit = "") "Inactive phosphatase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_lck_inactive_amount(unit = "");
    Real elmt_lck_inactive_conc(unit = "");
    Real elmt_lck_inactive(unit = "") "Inactive lck";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_phosphatase_active_amount = 0.6;
        elmt_lck_active_amount = 0.0;
        elmt_phosphatase_inactive_amount = 0.6;
        elmt_lck_inactive_amount = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_lck_total = elmt_lck_total_amount;
        elmt_phosphatase_active = elmt_phosphatase_active_amount;
        elmt_lck_active = elmt_lck_active_amount;
        elmt_phosphatase_inactive = elmt_phosphatase_inactive_amount;
        elmt_lck_inactive = elmt_lck_inactive_amount;
        elmt_lck_total_amount = (elmt_lck_inactive + elmt_lck_active);
        der(elmt_phosphatase_active_amount) = ((- (elmt_v9 * elmt_reactant13)) + (- (elmt_v10 * elmt_reactant15)) + (elmt_v7 * elmt_product10) + (elmt_v8 * elmt_product12));
        der(elmt_lck_active_amount) = ((- (elmt_v6 * elmt_reactant8)) + (elmt_v3 * elmt_product4) + (elmt_v4 * elmt_product6) + (- (elmt_v2 * elmt_reactant1)));
        der(elmt_phosphatase_inactive_amount) = ((elmt_v9 * elmt_product14) + (- (elmt_v7 * elmt_reactant9)) + (- (elmt_v8 * elmt_reactant11)));
        der(elmt_lck_inactive_amount) = ((- (elmt_v5 * elmt_reactant7)) + (- (elmt_v3 * elmt_reactant3)) + (- (elmt_v4 * elmt_reactant5)) + (elmt_v1 * elmt_product0) + (elmt_v2 * elmt_product2));

    algorithm
        elmt_lck_total_conc := elmt_lck_total_amount / elmt_compartment;
        elmt_phosphatase_active_conc := elmt_phosphatase_active_amount / elmt_compartment;
        elmt_lck_active_conc := elmt_lck_active_amount / elmt_compartment;
        elmt_phosphatase_inactive_conc := elmt_phosphatase_inactive_amount / elmt_compartment;
        elmt_lck_inactive_conc := elmt_lck_inactive_amount / elmt_compartment;
end Class_elmt_compartment;
