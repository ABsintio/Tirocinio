within BIOMD031;
class Reactions

    input Real elmt_Mp;
    input Real elmt_M;
    input Real elmt_MKP3;
    input Real elmt_Km5;
    input Real elmt_uVol;
    input Real elmt_Km3;
    input Real elmt_Km4;
    input Real elmt_MAPKK1;
    input Real elmt_MAPKK2;
    input Real elmt_k4cat;
    input Real elmt_Km1;
    input Real elmt_k3cat;
    input Real elmt_Km2;
    input Real elmt_Mpp;
    input Real elmt_k1cat;
    input Real elmt_k2cat;

    Real elmt_v3(unit = "") "dephosphorylation of PP-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v4(unit = "") "dephosphorylation of P-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v1(unit = "") "phosphorylation of MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "phosphorylation of P-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_v3 = (elmt_uVol * (((elmt_k3cat * elmt_MKP3 * elmt_Mpp) / elmt_Km3) / (1.0 + (elmt_Mpp / elmt_Km3) + (elmt_Mp / elmt_Km4) + (elmt_M / elmt_Km5))));
        elmt_v4 = (elmt_uVol * (((elmt_k4cat * elmt_MKP3 * elmt_Mp) / elmt_Km4) / (1.0 + (elmt_Mpp / elmt_Km3) + (elmt_Mp / elmt_Km4) + (elmt_M / elmt_Km5))));
        elmt_v1 = (elmt_uVol * (((elmt_k1cat * elmt_MAPKK1 * elmt_M) / elmt_Km1) / (1.0 + (elmt_M / elmt_Km1))));
        elmt_v2 = (elmt_uVol * (((elmt_k2cat * elmt_MAPKK2 * elmt_Mp) / elmt_Km2) / (1.0 + (elmt_Mp / elmt_Km2))));
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
