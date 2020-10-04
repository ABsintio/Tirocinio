within BIOMD269;
class Class_elmt_extra

    Real elmt_extra(unit = "") "extracellular";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CK_ex_conc(unit = "");
    Real elmt_CK_ex_amount(unit = "");
    Real elmt_CK_ex(unit = "") "Cytokinin_ext";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ACC_conc(unit = "");
    Real elmt_ACC_amount(unit = "");
    Real elmt_ACC(unit = "") "ACC";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_IAA_conc(unit = "");
    Real elmt_IAA_amount(unit = "");
    Real elmt_IAA(unit = "") "IAA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_extra = 1.0;
        elmt_CK_ex_conc = 0.0;
        elmt_ACC_conc = 0.0;
        elmt_IAA_conc = 0.0;


    equation
        assert(elmt_extra >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extra) = 0;
        elmt_CK_ex = elmt_CK_ex_conc;
        elmt_ACC = elmt_ACC_conc;
        elmt_IAA = elmt_IAA_conc;
        der(elmt_CK_ex_amount) = 0;
        der(elmt_ACC_amount) = 0;
        der(elmt_IAA_amount) = 0;

    algorithm
        elmt_CK_ex_conc := elmt_CK_ex_amount / elmt_extra;
        elmt_ACC_conc := elmt_ACC_amount / elmt_extra;
        elmt_IAA_conc := elmt_IAA_amount / elmt_extra;
end Class_elmt_extra;
