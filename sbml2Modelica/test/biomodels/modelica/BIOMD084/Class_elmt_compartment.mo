within BIOMD084;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_v7;
    input Real elmt_v8;
    input Real elmt_product11;
    input Real elmt_v5;
    input Real elmt_reactant8;
    input Real elmt_v6;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_product15;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_product13;

    Real elmt_compartment(unit = "") "Cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Rin_amount(unit = "");
    Real elmt_Rin_conc(unit = "");
    Real elmt_Rin(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x1p_amount(unit = "");
    Real elmt_x1p_conc(unit = "");
    Real elmt_x1p(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x2p_amount(unit = "");
    Real elmt_x2p_conc(unit = "");
    Real elmt_x2p(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x3p_amount(unit = "");
    Real elmt_x3p_conc(unit = "");
    Real elmt_x3p(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x3_amount(unit = "");
    Real elmt_x3_conc(unit = "");
    Real elmt_x3(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x1_amount(unit = "");
    Real elmt_x1_conc(unit = "");
    Real elmt_x1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_x2_amount(unit = "");
    Real elmt_x2_conc(unit = "");
    Real elmt_x2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_amount(unit = "");
    Real elmt_R_conc(unit = "");
    Real elmt_R(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_Rin_amount = 0.0;
        elmt_x1p_amount = 0.0;
        elmt_x2p_amount = 0.0;
        elmt_x3p_amount = 0.0;
        elmt_x3_amount = 1.0;
        elmt_x1_amount = 1.0;
        elmt_x2_amount = 1.0;
        elmt_R_amount = 0.5;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_Rin = elmt_Rin_amount;
        elmt_x1p = elmt_x1p_amount;
        elmt_x2p = elmt_x2p_amount;
        elmt_x3p = elmt_x3p_amount;
        elmt_x3 = elmt_x3_amount;
        elmt_x1 = elmt_x1_amount;
        elmt_x2 = elmt_x2_amount;
        elmt_R = elmt_R_amount;
        der(elmt_Rin_amount) = ((elmt_v1 * elmt_product1) + (- (elmt_v2 * elmt_reactant2)));
        der(elmt_x1p_amount) = ((elmt_v3 * elmt_product5) + (- (elmt_v4 * elmt_reactant6)));
        der(elmt_x2p_amount) = ((elmt_v5 * elmt_product9) + (- (elmt_v6 * elmt_reactant10)));
        der(elmt_x3p_amount) = ((elmt_v7 * elmt_product13) + (- (elmt_v8 * elmt_reactant14)));
        der(elmt_x3_amount) = ((- (elmt_v7 * elmt_reactant12)) + (elmt_v8 * elmt_product15));
        der(elmt_x1_amount) = ((- (elmt_v3 * elmt_reactant4)) + (elmt_v4 * elmt_product7));
        der(elmt_x2_amount) = ((- (elmt_v5 * elmt_reactant8)) + (elmt_v6 * elmt_product11));
        der(elmt_R_amount) = ((- (elmt_v1 * elmt_reactant0)) + (elmt_v2 * elmt_product3));

    algorithm
        elmt_Rin_conc := elmt_Rin_amount / elmt_compartment;
        elmt_x1p_conc := elmt_x1p_amount / elmt_compartment;
        elmt_x2p_conc := elmt_x2p_amount / elmt_compartment;
        elmt_x3p_conc := elmt_x3p_amount / elmt_compartment;
        elmt_x3_conc := elmt_x3_amount / elmt_compartment;
        elmt_x1_conc := elmt_x1_amount / elmt_compartment;
        elmt_x2_conc := elmt_x2_amount / elmt_compartment;
        elmt_R_conc := elmt_R_amount / elmt_compartment;
end Class_elmt_compartment;
