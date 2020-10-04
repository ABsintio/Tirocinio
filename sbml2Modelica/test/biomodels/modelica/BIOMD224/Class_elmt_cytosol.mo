within BIOMD224;
class Class_elmt_cytosol

    input Real elmt_JChannel;
    input Real elmt_reactant2;
    input Real elmt_JPump;
    input Real elmt_product6;
    input Real elmt_reactant5;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_inhibition_parameter2;
    input Real elmt_kPLC;
    input Real elmt_inhibition_parameter1;
    input Real elmt_kPhosphatase;
    input Real elmt_product4;

    Real elmt_cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_g_conc(unit = "");
    Real elmt_g_amount(unit = "");
    Real elmt_g(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CaI_conc(unit = "");
    Real elmt_CaI_amount(unit = "");
    Real elmt_CaI(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_IP3_conc(unit = "");
    Real elmt_IP3_amount(unit = "");
    Real elmt_IP3(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_g_conc = 0.0;
        elmt_CaI_conc = 0.1;
        elmt_IP3_conc = 0.05;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_g = elmt_g_conc;
        elmt_CaI = elmt_CaI_conc;
        elmt_IP3 = elmt_IP3_conc;
        der(elmt_g_amount) = ((- (elmt_inhibition_parameter2 * elmt_reactant7)) + (elmt_inhibition_parameter1 * elmt_product6));
        der(elmt_CaI_amount) = ((elmt_JChannel * elmt_product1) + (- (elmt_JPump * elmt_reactant2)));
        der(elmt_IP3_amount) = ((elmt_kPLC * elmt_product4) + (- (elmt_kPhosphatase * elmt_reactant5)));

    algorithm
        elmt_g_conc := elmt_g_amount / elmt_cytosol;
        elmt_CaI_conc := elmt_CaI_amount / elmt_cytosol;
        elmt_IP3_conc := elmt_IP3_amount / elmt_cytosol;
end Class_elmt_cytosol;
