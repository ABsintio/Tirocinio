within BIOMD029;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_v7;
    input Real elmt_reactant6;
    input Real elmt_product11;
    input Real elmt_v5;
    input Real elmt_reactant8;
    input Real elmt_v6;
    input Real elmt_product1;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_product3;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_v1;
    input Real elmt_product13;
    input Real elmt_v2;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "ERK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MpY_conc(unit = "");
    Real elmt_MpY_amount(unit = "");
    Real elmt_MpY(unit = "") "ERK-PY";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MEK_conc(unit = "");
    Real elmt_MEK_amount(unit = "");
    Real elmt_MEK(unit = "") "MEK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MKP3_conc(unit = "");
    Real elmt_MKP3_amount(unit = "");
    Real elmt_MKP3(unit = "") "MKP3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MpT_conc(unit = "");
    Real elmt_MpT_amount(unit = "");
    Real elmt_MpT(unit = "") "ERK-PT";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Mpp_conc(unit = "");
    Real elmt_Mpp_amount(unit = "");
    Real elmt_Mpp(unit = "") "ERK-PP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_M_conc = 800.0;
        elmt_MpY_conc = 0.0;
        elmt_MEK_conc = 180.0;
        elmt_MKP3_conc = 100.0;
        elmt_MpT_conc = 0.0;
        elmt_Mpp_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_M = elmt_M_conc;
        elmt_MpY = elmt_MpY_conc;
        elmt_MEK = elmt_MEK_conc;
        elmt_MKP3 = elmt_MKP3_conc;
        elmt_MpT = elmt_MpT_conc;
        elmt_Mpp = elmt_Mpp_conc;
        der(elmt_MEK_amount) = 0;
        der(elmt_MKP3_amount) = 0;
        der(elmt_M_amount) = ((elmt_v7 * elmt_product13) + (elmt_v6 * elmt_product11) + (- (elmt_v3 * elmt_reactant4)) + (- (elmt_v1 * elmt_reactant0)));
        der(elmt_MpY_amount) = ((- (elmt_v7 * elmt_reactant12)) + (elmt_v1 * elmt_product1) + (- (elmt_v2 * elmt_reactant2)));
        der(elmt_MpT_amount) = ((elmt_v5 * elmt_product9) + (- (elmt_v6 * elmt_reactant10)) + (elmt_v3 * elmt_product5) + (- (elmt_v4 * elmt_reactant6)));
        der(elmt_Mpp_amount) = ((- (elmt_v5 * elmt_reactant8)) + (elmt_v4 * elmt_product7) + (elmt_v2 * elmt_product3));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_cell;
        elmt_MpY_conc := elmt_MpY_amount / elmt_cell;
        elmt_MEK_conc := elmt_MEK_amount / elmt_cell;
        elmt_MKP3_conc := elmt_MKP3_amount / elmt_cell;
        elmt_MpT_conc := elmt_MpT_amount / elmt_cell;
        elmt_Mpp_conc := elmt_Mpp_amount / elmt_cell;
end Class_elmt_cell;
