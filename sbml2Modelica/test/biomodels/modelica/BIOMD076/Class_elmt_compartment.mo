within BIOMD076;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_Gpp_p;
    input Real elmt_product1;
    input Real elmt_Gpd_p;

    Real elmt_compartment(unit = "") "Cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_G3P_conc(unit = "");
    Real elmt_G3P_amount(unit = "");
    Real elmt_G3P(unit = "") "Glycerol 3-phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Gly_conc(unit = "");
    Real elmt_Gly_amount(unit = "");
    Real elmt_Gly(unit = "") "Glycerol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_DHAP_conc(unit = "");
    Real elmt_DHAP_amount(unit = "");
    Real elmt_DHAP(unit = "") "DHAP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_G3P_conc = 0.0;
        elmt_Gly_conc = 15.1;
        elmt_DHAP_conc = 0.59;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_G3P = elmt_G3P_conc;
        elmt_Gly = elmt_Gly_conc;
        elmt_DHAP = elmt_DHAP_conc;
        der(elmt_Gly_amount) = 0;
        der(elmt_DHAP_amount) = 0;
        der(elmt_G3P_amount) = ((- (elmt_Gpp_p * elmt_reactant2)) + (elmt_Gpd_p * elmt_product1));

    algorithm
        elmt_G3P_conc := elmt_G3P_amount / elmt_compartment;
        elmt_Gly_conc := elmt_Gly_amount / elmt_compartment;
        elmt_DHAP_conc := elmt_DHAP_amount / elmt_compartment;
end Class_elmt_compartment;
