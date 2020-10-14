within BIOMD224;
class Reactions

    input Real elmt_k1;
    input Real elmt_CaS;
    input Real elmt_L;
    input Real elmt_g;
    input Real elmt_E;
    input Real elmt_F;
    input Real elmt_C;
    input Real elmt_D;
    input Real elmt_A;
    input Real elmt_k2;
    input Real elmt_B;
    input Real elmt_k3;
    input Real elmt_CaI;
    input Real elmt_IP3;
    input Real elmt_R;

    Real elmt_JChannel(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_JPump(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_kPLC(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product4 "";
    Real elmt_inhibition_parameter2(unit = "") "";
    Real elmt_reactant7 "";
    Real elmt_inhibition_parameter1(unit = "") "";
    Real elmt_product6 "";
    Real elmt_kPhosphatase(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant5 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_JChannel = ((1.0 - elmt_g) * (((elmt_A * Functions.pow((elmt_IP3 * 0.5), 4.0)) / Functions.pow(((elmt_IP3 * 0.5) + elmt_k1), 4.0)) + elmt_L) * elmt_CaS);
        elmt_JPump = ((elmt_B * Functions.pow((elmt_CaI * 0.01), 2.0)) / (Functions.pow((elmt_CaI * 0.01), 2.0) + Functions.pow(elmt_k2, 2.0)));
        elmt_kPLC = (elmt_C * (1.0 - ((elmt_k3 / ((elmt_CaI * 0.01) + elmt_k3)) * (1.0 / (1.0 + elmt_R)))));
        elmt_inhibition_parameter2 = elmt_F;
        elmt_inhibition_parameter1 = (elmt_E * Functions.pow((elmt_CaI * 0.01), 4.0) * (1.0 - elmt_g));
        elmt_kPhosphatase = (elmt_D * elmt_IP3 * 0.5);
        der(elmt_reactant2) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
