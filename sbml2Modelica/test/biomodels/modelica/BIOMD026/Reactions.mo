within BIOMD026;
class Reactions

    input Real elmt_Mp;
    input Real elmt_MKP3;
    input Real elmt_uVol;
    input Real elmt_Mp_MKP3_dep;
    input Real elmt_h5;
    input Real elmt_h6;
    input Real elmt_h3;
    input Real elmt_h4;
    input Real elmt_h1;
    input Real elmt_h2;
    input Real elmt_M_MKP3;
    input Real elmt_M_MAPKK;
    input Real elmt_Mpp;
    input Real elmt_k1;
    input Real elmt_M;
    input Real elmt_Mpp_MKP3;
    input Real elmt_MAPKK;
    input Real elmt_k_3;
    input Real elmt_h_6;
    input Real elmt_Mp_MKP3;
    input Real elmt_k_1;
    input Real elmt_h_4;
    input Real elmt_k4;
    input Real elmt_h_3;
    input Real elmt_Mp_MAPKK;
    input Real elmt_k2;
    input Real elmt_h_1;
    input Real elmt_k3;

    Real elmt_v1b(unit = "") "phosphorylation of MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_v1a(unit = "") "binding MAPK and PP-MAPKK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_v2b(unit = "") "phosphorylation of P-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product11 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_v3c(unit = "") "dissociation of MKP from P-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_v2a(unit = "") "binding PP-MAPKK and P-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_v3b(unit = "") "dephosphorylation of PP-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_v4c(unit = "") "dissociation of MKP from MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_v3a(unit = "") "binding MKP and PP-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_v4b(unit = "") "dephosphorylation of P-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_v4a(unit = "") "binding MKP and P-MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_v1b = (elmt_uVol * elmt_k2 * elmt_M_MAPKK);
        elmt_v1a = (elmt_uVol * ((elmt_k1 * elmt_M * elmt_MAPKK) - (elmt_k_1 * elmt_M_MAPKK)));
        elmt_v2b = (elmt_uVol * elmt_k4 * elmt_Mp_MAPKK);
        elmt_v3c = ((elmt_h3 * elmt_Mp_MKP3_dep) - (elmt_h_3 * elmt_Mp * elmt_MKP3));
        elmt_v2a = (elmt_uVol * ((elmt_k3 * elmt_Mp * elmt_MAPKK) - (elmt_k_3 * elmt_Mp_MAPKK)));
        elmt_v3b = (elmt_uVol * elmt_h2 * elmt_Mpp_MKP3);
        elmt_v4c = (elmt_uVol * ((elmt_h6 * elmt_M_MKP3) - (elmt_h_6 * elmt_M * elmt_MKP3)));
        elmt_v3a = (elmt_uVol * ((elmt_h1 * elmt_Mpp * elmt_MKP3) - (elmt_h_1 * elmt_Mpp_MKP3)));
        elmt_v4b = (elmt_uVol * elmt_h5 * elmt_Mp_MKP3);
        elmt_v4a = (elmt_uVol * ((elmt_h4 * elmt_Mp * elmt_MKP3) - (elmt_h_4 * elmt_Mp_MKP3)));
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
