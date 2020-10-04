within BIOMD337;
class Reactions

    input Real elmt_N1;
    input Real elmt_N2;
    input Real elmt_v;
    input Real elmt_S;
    input Real elmt_d;

    Real elmt_r5(unit = "") "cell death 2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant6 "";
    Real elmt_r3(unit = "") "resource consumption and cell growth 2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_r4(unit = "") "cell death 1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant5 "";
    Real elmt_r1(unit = "") "resource production";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_r2(unit = "") "resource consumption and cell growth 1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_product2 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product0 = 1.0;
        elmt_product4 = 1.0;
        elmt_product2 = 10.0;


    equation
        elmt_r5 = (elmt_d * elmt_N2);
        elmt_r3 = ((elmt_N2 * 20.0 * elmt_S) / (1.0 + elmt_S));
        elmt_r4 = (elmt_d * elmt_N1);
        elmt_r1 = elmt_v;
        elmt_r2 = ((elmt_N1 * elmt_S) / (1.0 + elmt_S));
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product0) = 0;
        der(elmt_product4) = 0;
        der(elmt_product2) = 0;

end Reactions;
