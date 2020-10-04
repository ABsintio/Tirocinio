within BIOMD458;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_PDH;
    input Real elmt_product1;
    input Real elmt_PSP;
    input Real elmt_PSA;
    input Real elmt_product3;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_php_conc(unit = "");
    Real elmt_php_amount(unit = "");
    Real elmt_php(unit = "") "phosphohydroxypyruvate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_p3g_conc(unit = "");
    Real elmt_p3g_amount(unit = "");
    Real elmt_p3g(unit = "") "3-phosphoglycerate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_pser_conc(unit = "");
    Real elmt_pser_amount(unit = "");
    Real elmt_pser(unit = "") "phosphoserine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ser_conc(unit = "");
    Real elmt_ser_amount(unit = "");
    Real elmt_ser(unit = "") "serine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_serA_conc(unit = "");
    Real elmt_serA_amount(unit = "");
    Real elmt_serA(unit = "") "serA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_serB_conc(unit = "");
    Real elmt_serB_amount(unit = "");
    Real elmt_serB(unit = "") "serB";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_serC_conc(unit = "");
    Real elmt_serC_amount(unit = "");
    Real elmt_serC(unit = "") "serC";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_php_conc = 0.6;
        elmt_p3g_conc = 2.36;
        elmt_pser_conc = 0.09;
        elmt_ser_conc = 4.9;
        elmt_serA_conc = 1.15;
        elmt_serB_conc = 0.25;
        elmt_serC_conc = 0.1;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_php = elmt_php_conc;
        elmt_p3g = elmt_p3g_conc;
        elmt_pser = elmt_pser_conc;
        elmt_ser = elmt_ser_conc;
        elmt_serA = elmt_serA_conc;
        elmt_serB = elmt_serB_conc;
        elmt_serC = elmt_serC_conc;
        der(elmt_p3g_amount) = 0;
        der(elmt_ser_amount) = 0;
        der(elmt_serA_amount) = 0;
        der(elmt_serB_amount) = 0;
        der(elmt_serC_amount) = 0;
        der(elmt_php_amount) = ((elmt_PDH * elmt_product1) + (- (elmt_PSA * elmt_reactant2)));
        der(elmt_pser_amount) = ((- (elmt_PSP * elmt_reactant4)) + (elmt_PSA * elmt_product3));

    algorithm
        elmt_php_conc := elmt_php_amount / elmt_cell;
        elmt_p3g_conc := elmt_p3g_amount / elmt_cell;
        elmt_pser_conc := elmt_pser_amount / elmt_cell;
        elmt_ser_conc := elmt_ser_amount / elmt_cell;
        elmt_serA_conc := elmt_serA_amount / elmt_cell;
        elmt_serB_conc := elmt_serB_amount / elmt_cell;
        elmt_serC_conc := elmt_serC_amount / elmt_cell;
end Class_elmt_cell;
