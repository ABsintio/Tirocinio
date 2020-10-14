within BIOMD515;
class Class_elmt_default

    Real elmt_default(unit = "") "default";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Glc_e_conc(unit = "");
    Real elmt_Glc_e_amount(unit = "");
    Real elmt_Glc_e(unit = "") "Glc_e";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Fru_e_conc(unit = "");
    Real elmt_Fru_e_amount(unit = "");
    Real elmt_Fru_e(unit = "") "Fru_e";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Pyr_e_conc(unit = "");
    Real elmt_Pyr_e_amount(unit = "");
    Real elmt_Pyr_e(unit = "") "Pyr_e";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Gly_e_conc(unit = "");
    Real elmt_Gly_e_amount(unit = "");
    Real elmt_Gly_e(unit = "") "Gly_e";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_O2_c_conc(unit = "");
    Real elmt_O2_c_amount(unit = "");
    Real elmt_O2_c(unit = "") "O2_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_Glc_e_conc = 5.0;
        elmt_Fru_e_conc = 5.0;
        elmt_Pyr_e_conc = 0.0;
        elmt_Gly_e_conc = 0.0;
        elmt_O2_c_conc = 1.0;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_Glc_e = elmt_Glc_e_conc;
        elmt_Fru_e = elmt_Fru_e_conc;
        elmt_Pyr_e = elmt_Pyr_e_conc;
        elmt_Gly_e = elmt_Gly_e_conc;
        elmt_O2_c = elmt_O2_c_conc;
        der(elmt_Glc_e_amount) = 0;
        der(elmt_Fru_e_amount) = 0;
        der(elmt_Pyr_e_amount) = 0;
        der(elmt_Gly_e_amount) = 0;
        der(elmt_O2_c_amount) = 0;

    algorithm
        elmt_Glc_e_conc := elmt_Glc_e_amount / elmt_default;
        elmt_Fru_e_conc := elmt_Fru_e_amount / elmt_default;
        elmt_Pyr_e_conc := elmt_Pyr_e_amount / elmt_default;
        elmt_Gly_e_conc := elmt_Gly_e_amount / elmt_default;
        elmt_O2_c_conc := elmt_O2_c_amount / elmt_default;
end Class_elmt_default;
