within BIOMD119;
class Class_elmt_compartment_0000001

    input Real elmt_product0;
    input Real elmt_reaction_0000001;

    Real elmt_compartment_0000001(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ca_conc(unit = "");
    Real elmt_Ca_amount(unit = "");
    Real elmt_Ca(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment_0000001 = 1.0;
        elmt_Ca_conc = 7.87E-4;


    equation
        assert(elmt_compartment_0000001 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0000001) = 0;
        elmt_Ca = elmt_Ca_conc;
        der(elmt_Ca_amount) = (elmt_reaction_0000001 * elmt_product0);

    algorithm
        elmt_Ca_conc := elmt_Ca_amount / elmt_compartment_0000001;
end Class_elmt_compartment_0000001;
