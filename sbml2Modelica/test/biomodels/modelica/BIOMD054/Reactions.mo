within BIOMD054;
class Reactions

    input Real elmt_P;
    input Real elmt_cell;
    input Real elmt_M;
    input Real elmt_n;
    input Real elmt_k;
    input Real elmt_I;
    input Real elmt_J;
    input Real elmt_W;
    input Real elmt_U;
    input Real elmt_W2;
    input Real elmt_W3;
    input Real elmt_T;

    Real elmt_U6_plus_U7_minus_U8(unit = "") "Adenylate pool";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product5 "";
    Real elmt_U2(unit = "") "ATP consumption by ion pump";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant1 "";
    Real elmt_U3(unit = "") "ATP from glycolysis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product3 "";
    Real elmt_U1(unit = "") "Passive ion influx";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_U6_plus_3U7(unit = "") "AMP synthesis de novo";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 3.0;
        elmt_reactant4 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_U6_plus_U7_minus_U8 = (elmt_cell * elmt_U * (1.0 - (elmt_W * Functions.pow(elmt_T, elmt_n) * Functions.pow(elmt_M, elmt_k))));
        elmt_U2 = (elmt_cell * elmt_W2 * elmt_I * elmt_T);
        elmt_U3 = (elmt_cell * elmt_W3 * Functions.pow(elmt_T, 0.52) * Functions.pow(elmt_M, 0.41));
        elmt_U1 = (elmt_cell * elmt_P * elmt_J);
        elmt_U6_plus_3U7 = (elmt_cell * 2.0 * elmt_U);
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;

end Reactions;
