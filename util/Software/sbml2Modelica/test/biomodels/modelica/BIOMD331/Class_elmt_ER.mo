within BIOMD331;
class Class_elmt_ER

    input Real elmt_PLC;
    input Real elmt_Ca_cyt;
    input Real elmt_K17;
    input Real elmt_k16;
    input Real elmt_K11;
    input Real elmt_k10;

    Real elmt_ER(unit = "") "ER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_ER_conc(unit = "");
    Real elmt_Ca_ER_amount(unit = "");
    Real elmt_Ca_ER(unit = "") "Calcium-ER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_ER = 1.0;
        elmt_Ca_ER_conc = (10.0 / elmt_ER);


    equation
        assert(elmt_ER >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ER) = 0;
        elmt_Ca_ER = elmt_Ca_ER_conc;
        der(elmt_Ca_ER_amount / elmt_ER) = ((((- (elmt_Ca_ER - elmt_Ca_cyt)) * elmt_k10 * elmt_Ca_cyt * Functions.pow(elmt_PLC, 4.0)) / (Functions.pow(elmt_PLC, 4.0) + Functions.pow(elmt_K11, 4.0))) + ((elmt_k16 * elmt_Ca_cyt) / (elmt_Ca_cyt + elmt_K17)));

    algorithm
        elmt_Ca_ER_conc := elmt_Ca_ER_amount / elmt_ER;
end Class_elmt_ER;
