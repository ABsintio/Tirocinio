within BIOMD145;
class Class_elmt_ER

    input Real elmt_reactant8;
    input Real elmt_R9;

    Real elmt_ER(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_ER_conc(unit = "");
    Real elmt_Ca_ER_amount(unit = "");
    Real elmt_Ca_ER(unit = "") "Calcium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_ER = 1.0;
        elmt_Ca_ER_conc = 1000.0;


    equation
        assert(elmt_ER >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ER) = 0;
        elmt_Ca_ER = elmt_Ca_ER_conc;
        der(elmt_Ca_ER_amount) = (- (elmt_R9 * elmt_reactant8));

    algorithm
        elmt_Ca_ER_conc := elmt_Ca_ER_amount / elmt_ER;
end Class_elmt_ER;
