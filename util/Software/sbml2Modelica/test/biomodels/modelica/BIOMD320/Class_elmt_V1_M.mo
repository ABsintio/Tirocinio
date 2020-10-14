within BIOMD320;
class Class_elmt_V1_M

    input Real elmt_bens_metabolism;
    input Real elmt_reactant19;
    input Real elmt_product15;
    input Real elmt_reactant16;
    input Real elmt_ro_distribution;
    input Real elmt_product4;
    input Real elmt_ro_04_5127_absorption;
    input Real elmt_ro_clearance;

    Real elmt_V1_M(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C1_M_conc(unit = "");
    Real elmt_C1_M_amount(unit = "");
    Real elmt_C1_M(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_V1_M = 0.0691;
        elmt_C1_M_conc = 0.0;


    equation
        assert(elmt_V1_M >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_V1_M) = 0;
        elmt_C1_M = elmt_C1_M_conc;
        der(elmt_C1_M_amount) = ((- (elmt_ro_distribution * elmt_reactant19)) + (elmt_ro_04_5127_absorption * elmt_product4) + (- (elmt_ro_clearance * elmt_reactant16)) + (elmt_bens_metabolism * elmt_product15));

    algorithm
        elmt_C1_M_conc := elmt_C1_M_amount / elmt_V1_M;
end Class_elmt_V1_M;
