within BIOMD521;
class Class_elmt_plama

    input Real elmt_KDE;

    Real elmt_plama(unit = "") "plasma";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "PCV_plasma";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_plama = 1.0;
        elmt_C_conc = 1.0;


    equation
        assert(elmt_plama >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_plama) = 0;
        elmt_C = elmt_C_conc;
        der(elmt_C_amount / elmt_plama) = ((- elmt_KDE) * elmt_C);

    algorithm
        elmt_C_conc := elmt_C_amount / elmt_plama;
end Class_elmt_plama;
