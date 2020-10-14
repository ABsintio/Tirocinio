within BIOMD232;
class Class_elmt_cytoplasm

    Real elmt_cytoplasm(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_He_conc(unit = "");
    Real elmt_He_amount(unit = "");
    Real elmt_He(unit = "") "H+";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));

    initial equation
        elmt_cytoplasm = 1.0;
        elmt_He_conc = 1.0;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_He = elmt_He_conc;
        der(elmt_He_amount) = 0;

    algorithm
        elmt_He_conc := elmt_He_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
