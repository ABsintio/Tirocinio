within BIOMD117;
class Reactions

    input Real elmt_p;
    input Real elmt_beta;
    input Real elmt_m;
    input Real elmt_n;
    input Real elmt_k;
    input Real elmt_extracellular;
    input Real elmt_VM3;
    input Real elmt_intracellular_Ca_storepool;
    input Real elmt_VM2;
    input Real elmt_KR;
    input Real elmt_K2;
    input Real elmt_KA;
    input Real elmt_Cytosol;
    input Real elmt_y;
    input Real elmt_z;
    input Real elmt_kf;
    input Real elmt_v1;
    input Real elmt_v0;

    Real elmt_reaction_0000006(unit = "") "Transport of cytosolic ca into the extracellular medium";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant8 "";
    Real elmt_reaction_0000005(unit = "") "Release of Ca from the pool into the cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_0000004(unit = "") "Pumping Ca into the InsP3-insensitive store";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_reaction_0000003(unit = "") "Leak Ca from pool to cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_reaction_0000002(unit = "") "Constant input of Ca from the extracellular medium";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reaction_0000001(unit = "") "InsP3 modulated release of Ca from the InsP3 sensitive store";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_reaction_0000006 = (elmt_k * elmt_z * elmt_extracellular);
        elmt_reaction_0000005 = (elmt_Cytosol * elmt_VM3 * (Functions.pow(elmt_y, elmt_m) / (Functions.pow(elmt_KR, elmt_m) + Functions.pow(elmt_y, elmt_m))) * (Functions.pow(elmt_z, elmt_p) / (Functions.pow(elmt_KA, elmt_p) + Functions.pow(elmt_z, elmt_p))));
        elmt_reaction_0000004 = ((elmt_intracellular_Ca_storepool * elmt_VM2 * Functions.pow(elmt_z, elmt_n)) / (Functions.pow(elmt_K2, elmt_n) + Functions.pow(elmt_z, elmt_n)));
        elmt_reaction_0000003 = (elmt_kf * elmt_y * elmt_Cytosol);
        elmt_reaction_0000002 = (elmt_v0 * elmt_Cytosol);
        elmt_reaction_0000001 = (elmt_v1 * elmt_beta * elmt_Cytosol);
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;

end Reactions;
