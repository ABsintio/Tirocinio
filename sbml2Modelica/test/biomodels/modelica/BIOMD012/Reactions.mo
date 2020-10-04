within BIOMD012;
class Reactions

    input Real elmt_n;
    input Real elmt_KM;
    input Real elmt_a0_tr;
    input Real elmt_kd_prot;
    input Real elmt_PY;
    input Real elmt_a_tr;
    input Real elmt_PZ;
    input Real elmt_PX;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_kd_mRNA;
    input Real elmt_k_tl;
    input Real elmt_X;

    Real elmt_Reaction12(unit = "") "transcription of CI";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product11 "";
    Real elmt_Reaction11(unit = "") "transcription of TetR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product10 "";
    Real elmt_Reaction10(unit = "") "transcription of LacI";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_Reaction9(unit = "") "degradation of CI";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant8 "";
    Real elmt_Reaction8(unit = "") "degradation of TetR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant7 "";
    Real elmt_Reaction7(unit = "") "degradation of LacI";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant6 "";
    Real elmt_Reaction6(unit = "") "translation of CI";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product5 "";
    Real elmt_Reaction5(unit = "") "translation of TetR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product4 "";
    Real elmt_Reaction4(unit = "") "translation of LacI";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product3 "";
    Real elmt_Reaction3(unit = "") "degradation of CI transcripts";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_Reaction2(unit = "") "degradation of TetR transcripts";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_Reaction1(unit = "") "degradation of LacI transcripts";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_Reaction12 = (elmt_a0_tr + ((elmt_a_tr * Functions.pow(elmt_KM, elmt_n)) / (Functions.pow(elmt_KM, elmt_n) + Functions.pow(elmt_PY, elmt_n))));
        elmt_Reaction11 = (elmt_a0_tr + ((elmt_a_tr * Functions.pow(elmt_KM, elmt_n)) / (Functions.pow(elmt_KM, elmt_n) + Functions.pow(elmt_PX, elmt_n))));
        elmt_Reaction10 = (elmt_a0_tr + ((elmt_a_tr * Functions.pow(elmt_KM, elmt_n)) / (Functions.pow(elmt_KM, elmt_n) + Functions.pow(elmt_PZ, elmt_n))));
        elmt_Reaction9 = (elmt_kd_prot * elmt_PZ);
        elmt_Reaction8 = (elmt_kd_prot * elmt_PY);
        elmt_Reaction7 = (elmt_kd_prot * elmt_PX);
        elmt_Reaction6 = (elmt_k_tl * elmt_Z);
        elmt_Reaction5 = (elmt_k_tl * elmt_Y);
        elmt_Reaction4 = (elmt_k_tl * elmt_X);
        elmt_Reaction3 = (elmt_kd_mRNA * elmt_Z);
        elmt_Reaction2 = (elmt_kd_mRNA * elmt_Y);
        elmt_Reaction1 = (elmt_kd_mRNA * elmt_X);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
