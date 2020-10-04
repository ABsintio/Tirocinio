within BIOMD113;
class Class_elmt_store

    input Real elmt_reactant4;
    input Real elmt_Rf;
    input Real elmt_reactant6;
    input Real elmt_R3;
    input Real elmt_R2;
    input Real elmt_product3;

    Real elmt_store(unit = "") "store";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_store = 1.0;
        elmt_Y_conc = 1.6;


    equation
        assert(elmt_store >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_store) = 0;
        elmt_Y = elmt_Y_conc;
        der(elmt_Y_amount) = ((- (elmt_Rf * elmt_reactant6)) + (- (elmt_R3 * elmt_reactant4)) + (elmt_R2 * elmt_product3));

    algorithm
        elmt_Y_conc := elmt_Y_amount / elmt_store;
end Class_elmt_store;
