within BIOMD296;
class Class_elmt_environment

    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_J0;
    input Real elmt_reactant6;
    input Real elmt_J7;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_J5;
    input Real elmt_J6;
    input Real elmt_J3;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_J4;
    input Real elmt_J1;
    input Real elmt_J2;
    input Real elmt_product13;

    Real elmt_environment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_A2_conc(unit = "");
    Real elmt_A2_amount(unit = "");
    Real elmt_A2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C2_conc(unit = "");
    Real elmt_C2_amount(unit = "");
    Real elmt_C2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_A1_conc(unit = "");
    Real elmt_A1_amount(unit = "");
    Real elmt_A1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C1_conc(unit = "");
    Real elmt_C1_amount(unit = "");
    Real elmt_C1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_sink_conc(unit = "");
    Real elmt_sink_amount(unit = "");
    Real elmt_sink(unit = "") "";
    Real elmt_IPTG_conc(unit = "");
    Real elmt_IPTG_amount(unit = "");
    Real elmt_IPTG(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_source_conc(unit = "");
    Real elmt_source_amount(unit = "");
    Real elmt_source(unit = "") "";

    initial equation
        elmt_environment = 1.0;
        elmt_A2_conc = 0.1;
        elmt_C2_conc = 20.0;
        elmt_A1_conc = 0.1;
        elmt_C1_conc = 20.0;
        elmt_sink_conc = 0.0;
        elmt_IPTG_conc = 5.0;
        elmt_source_conc = 0.0;


    equation
        assert(elmt_environment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_environment) = 0;
        elmt_A2 = elmt_A2_conc;
        elmt_C2 = elmt_C2_conc;
        elmt_A1 = elmt_A1_conc;
        elmt_C1 = elmt_C1_conc;
        elmt_sink = elmt_sink_conc;
        elmt_IPTG = elmt_IPTG_conc;
        elmt_source = elmt_source_conc;
        der(elmt_sink_amount) = 0;
        der(elmt_IPTG_amount) = 0;
        der(elmt_source_amount) = 0;
        der(elmt_A2_amount) = ((- (elmt_J7 * elmt_reactant14)) + (elmt_J6 * elmt_product13));
        der(elmt_C2_amount) = ((- (elmt_J3 * elmt_reactant6)) + (elmt_J2 * elmt_product5));
        der(elmt_A1_amount) = ((- (elmt_J5 * elmt_reactant10)) + (elmt_J4 * elmt_product9));
        der(elmt_C1_amount) = ((elmt_J0 * elmt_product1) + (- (elmt_J1 * elmt_reactant2)));

    algorithm
        elmt_A2_conc := elmt_A2_amount / elmt_environment;
        elmt_C2_conc := elmt_C2_amount / elmt_environment;
        elmt_A1_conc := elmt_A1_amount / elmt_environment;
        elmt_C1_conc := elmt_C1_amount / elmt_environment;
        elmt_sink_conc := elmt_sink_amount / elmt_environment;
        elmt_IPTG_conc := elmt_IPTG_amount / elmt_environment;
        elmt_source_conc := elmt_source_amount / elmt_environment;
end Class_elmt_environment;
