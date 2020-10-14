within BIOMD231;
class Reactions

    input Real elmt_Km2AMP;
    input Real elmt_K;
    input Real elmt_ATP;
    input Real elmt_k4;
    input Real elmt_Vm2;
    input Real elmt_AMP;
    input Real elmt_Vmapp1;
    input Real elmt_Kmapp1;
    input Real elmt_Vmapp3;
    input Real elmt_ADP;
    input Real elmt_Km2ATP;
    input Real elmt_Kmapp3;
    input Real elmt_Pyr;

    Real elmt_v3(unit = "") "v3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_v4(unit = "") "v4";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_v1(unit = "") "v1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "v2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product4 = 2.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_v3 = ((elmt_Vmapp3 * elmt_ADP) / (elmt_Kmapp3 + elmt_ADP));
        elmt_v4 = (elmt_k4 * elmt_Pyr);
        elmt_v1 = ((elmt_Vmapp1 * elmt_ATP) / (elmt_Kmapp1 + elmt_ATP));
        elmt_v2 = ((elmt_Vm2 * elmt_ATP * elmt_AMP) / (elmt_K + (elmt_Km2ATP * elmt_AMP) + (elmt_Km2AMP * elmt_ATP) + (elmt_ATP * elmt_AMP)));
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
