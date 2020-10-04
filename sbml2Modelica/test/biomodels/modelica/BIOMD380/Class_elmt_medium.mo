within BIOMD380;
class Class_elmt_medium

    Real elmt_medium(unit = "") "medium";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_glx_conc(unit = "");
    Real elmt_glx_amount(unit = "");
    Real elmt_glx(unit = "") "glucose";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_medium = 1.0;
        elmt_glx_conc = 100.0;


    equation
        assert(elmt_medium >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_medium) = 0;
        elmt_glx = elmt_glx_conc;
        der(elmt_glx_amount) = 0;

    algorithm
        elmt_glx_conc := elmt_glx_amount / elmt_medium;
end Class_elmt_medium;
