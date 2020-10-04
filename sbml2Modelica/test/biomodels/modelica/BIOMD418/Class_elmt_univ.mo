within BIOMD418;
class Class_elmt_univ

    input Real elmt____r2;
    input Real elmt_reactant1;
    input Real elmt____r1;
    input Real elmt_product0;

    Real elmt_univ(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_univ = 1.0;
        elmt_P_conc = (10.0 / elmt_univ);


    equation
        assert(elmt_univ >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_univ) = 0;
        elmt_P = elmt_P_conc;
        der(elmt_P_amount) = ((- (elmt____r2 * elmt_reactant1)) + (elmt____r1 * elmt_product0));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_univ;
end Class_elmt_univ;
