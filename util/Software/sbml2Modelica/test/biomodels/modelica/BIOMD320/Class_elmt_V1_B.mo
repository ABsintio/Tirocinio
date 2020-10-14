within BIOMD320;
class Class_elmt_V1_B

    input Real elmt_bens_metabolism;
    input Real elmt_product6;
    input Real elmt_bens_distribution;
    input Real elmt_benserazide_absorption;
    input Real elmt_reactant14;
    input Real elmt_reactant17;
    input Real elmt_bens_clearance;
    input Real elmt_reactant13;

    Real elmt_V1_B(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C1_B_conc(unit = "");
    Real elmt_C1_B_amount(unit = "");
    Real elmt_C1_B(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_V1_B = 0.202;
        elmt_C1_B_conc = 0.0;


    equation
        assert(elmt_V1_B >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_V1_B) = 0;
        elmt_C1_B = elmt_C1_B_conc;
        der(elmt_C1_B_amount) = ((- (elmt_bens_distribution * elmt_reactant17)) + (elmt_benserazide_absorption * elmt_product6) + (- (elmt_bens_metabolism * elmt_reactant14)) + (- (elmt_bens_clearance * elmt_reactant13)));

    algorithm
        elmt_C1_B_conc := elmt_C1_B_amount / elmt_V1_B;
end Class_elmt_V1_B;
