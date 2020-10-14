within BIOMD184;
class Reactions

    input Real elmt_kp;
    input Real elmt_m;
    input Real elmt_compartment;
    input Real elmt_n;
    input Real elmt_kdeg;
    input Real elmt_ER;
    input Real elmt_k_CaA;
    input Real elmt_vM3;
    input Real elmt_vM2;
    input Real elmt_vin;
    input Real elmt_k2;
    input Real elmt_k_CaI;
    input Real elmt_kout;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_kip3;
    input Real elmt_X;
    input Real elmt_kf;
    input Real elmt_vp;

    Real elmt_R7(unit = "") "IP3 degradation";
    Real elmt_reactant9 "";
    Real elmt_R5(unit = "") "Leak flux";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_R6(unit = "") "PLC";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product8 "";
    Real elmt_R3(unit = "") "CICR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_R4(unit = "") "serca";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_R1(unit = "") "vin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_R2(unit = "") "Calcium export from cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_R7 = (elmt_compartment * elmt_kdeg * elmt_Z);
        elmt_R5 = (elmt_ER * elmt_kf * (elmt_Y - elmt_X));
        elmt_R6 = ((elmt_compartment * elmt_vp * Functions.pow(elmt_X, 2.0)) / (Functions.pow(elmt_X, 2.0) + Functions.pow(elmt_kp, 2.0)));
        elmt_R3 = (elmt_ER * 4.0 * elmt_vM3 * Functions.pow(elmt_k_CaA, elmt_n) * (Functions.pow(elmt_X, elmt_n) / ((Functions.pow(elmt_X, elmt_n) + Functions.pow(elmt_k_CaA, elmt_n)) * (Functions.pow(elmt_X, elmt_n) + Functions.pow(elmt_k_CaI, elmt_n)))) * (Functions.pow(elmt_Z, elmt_m) / (Functions.pow(elmt_Z, elmt_m) + Functions.pow(elmt_kip3, elmt_m))) * (elmt_Y - elmt_X));
        elmt_R4 = ((elmt_compartment * elmt_vM2 * Functions.pow(elmt_X, 2.0)) / (Functions.pow(elmt_X, 2.0) + Functions.pow(elmt_k2, 2.0)));
        elmt_R1 = (elmt_compartment * elmt_vin);
        elmt_R2 = (elmt_compartment * elmt_kout * elmt_X);
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;

end Reactions;
