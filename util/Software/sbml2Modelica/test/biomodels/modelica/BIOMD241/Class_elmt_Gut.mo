within BIOMD241;
class Class_elmt_Gut

    input Real elmt_k_a;

    input Boolean elmt_coffecup;

    input Real assign_elmt_X_gut;

    Real elmt_Gut(unit = "") "Gut";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_gut_amount(unit = "");
    Real elmt_X_gut_conc(unit = "");
    Real elmt_X_gut(unit = "") "X_gut";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Gut = 1.0;
        elmt_X_gut_amount = 0.0;


    equation
        assert(elmt_Gut >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Gut) = 0;
        elmt_X_gut = elmt_X_gut_amount;
        der(elmt_X_gut_amount) = ((- elmt_k_a) * elmt_X_gut);

        when elmt_coffecup then
            reinit(elmt_X_gut_amount, assign_elmt_X_gut);
        end when;
    algorithm
        elmt_X_gut_conc := elmt_X_gut_amount / elmt_Gut;
end Class_elmt_Gut;
