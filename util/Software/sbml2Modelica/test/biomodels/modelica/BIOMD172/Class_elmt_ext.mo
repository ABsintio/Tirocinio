within BIOMD172;
class Class_elmt_ext

    Real elmt_ext(unit = "") "exterior";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GLCo_conc(unit = "");
    Real elmt_GLCo_amount(unit = "");
    Real elmt_GLCo(unit = "") "Glc(ext)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_ext = 1.0;
        elmt_GLCo_conc = 2.0;


    equation
        assert(elmt_ext >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ext) = 0;
        elmt_GLCo = elmt_GLCo_conc;
        der(elmt_GLCo_amount) = 0;

    algorithm
        elmt_GLCo_conc := elmt_GLCo_amount / elmt_ext;
end Class_elmt_ext;
