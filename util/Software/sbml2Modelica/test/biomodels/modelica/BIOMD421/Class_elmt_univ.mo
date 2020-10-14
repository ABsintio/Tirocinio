within BIOMD421;
class Class_elmt_univ

    input Real elmt____r3;
    input Real elmt____r2;
    input Real elmt_reactant1;
    input Real elmt____r1;
    input Real elmt_reactant3;
    input Real elmt_product0;
    input Real elmt_product2;
    input Real elmt____r4;

    Real elmt_univ(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P1_conc(unit = "");
    Real elmt_P1_amount(unit = "");
    Real elmt_P1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Target_conc(unit = "");
    Real elmt_Target_amount(unit = "");
    Real elmt_Target(unit = "") "";

    initial equation
        elmt_univ = 1.0;
        elmt_P1_conc = (10.0 / elmt_univ);
        elmt_Target_conc = (10.0 / elmt_univ);


    equation
        assert(elmt_univ >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_univ) = 0;
        elmt_P1 = elmt_P1_conc;
        elmt_Target = elmt_Target_conc;
        der(elmt_P1_amount) = ((- (elmt____r2 * elmt_reactant1)) + (elmt____r1 * elmt_product0));
        der(elmt_Target_amount) = ((elmt____r3 * elmt_product2) + (- (elmt____r4 * elmt_reactant3)));

    algorithm
        elmt_P1_conc := elmt_P1_amount / elmt_univ;
        elmt_Target_conc := elmt_Target_amount / elmt_univ;
end Class_elmt_univ;
