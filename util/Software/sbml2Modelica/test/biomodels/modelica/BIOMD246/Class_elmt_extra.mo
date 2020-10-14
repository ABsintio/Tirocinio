within BIOMD246;
class Class_elmt_extra

    Real elmt_extra(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Cl_ex_conc(unit = "");
    Real elmt_Cl_ex_amount(unit = "");
    Real elmt_Cl_ex(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Ca_ex_conc(unit = "");
    Real elmt_Ca_ex_amount(unit = "");
    Real elmt_Ca_ex(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_K_ex_conc(unit = "");
    Real elmt_K_ex_amount(unit = "");
    Real elmt_K_ex(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Na_ex_conc(unit = "");
    Real elmt_Na_ex_amount(unit = "");
    Real elmt_Na_ex(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_extra = 1.0;
        elmt_Cl_ex_conc = 114.5;
        elmt_Ca_ex_conc = 5.0;
        elmt_K_ex_conc = 1.0;
        elmt_Na_ex_conc = 145.0;


    equation
        assert(elmt_extra >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extra) = 0;
        elmt_Cl_ex = elmt_Cl_ex_conc;
        elmt_Ca_ex = elmt_Ca_ex_conc;
        elmt_K_ex = elmt_K_ex_conc;
        elmt_Na_ex = elmt_Na_ex_conc;
        der(elmt_Cl_ex_amount) = 0;
        der(elmt_Ca_ex_amount) = 0;
        der(elmt_K_ex_amount) = 0;
        der(elmt_Na_ex_amount) = 0;

    algorithm
        elmt_Cl_ex_conc := elmt_Cl_ex_amount / elmt_extra;
        elmt_Ca_ex_conc := elmt_Ca_ex_amount / elmt_extra;
        elmt_K_ex_conc := elmt_K_ex_amount / elmt_extra;
        elmt_Na_ex_conc := elmt_Na_ex_amount / elmt_extra;
end Class_elmt_extra;
