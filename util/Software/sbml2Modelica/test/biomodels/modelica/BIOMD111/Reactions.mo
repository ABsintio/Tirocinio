within BIOMD111;
class Reactions

    input Real elmt_k3_double_prime;
    input Real elmt_k2_double_prime;
    input Real elmt_slp1;
    input Real elmt_IEP;
    input Real elmt_k5_double_prime;
    input Real elmt_k5_prime;
    input Real elmt_k2_triple_prime;
    input Real elmt_ste9;
    input Real elmt_cdc13T;
    input Real elmt_MPF;
    input Real elmt_TF;
    input Real elmt_J9;
    input Real elmt_k14;
    input Real elmt_k13;
    input Real elmt_k12;
    input Real elmt_k11;
    input Real elmt_k10;
    input Real elmt_k3_prime;
    input Real elmt_k1;
    input Real elmt_M;
    input Real elmt_slp1T;
    input Real elmt_J7;
    input Real elmt_k8;
    input Real elmt_k9;
    input Real elmt_J8;
    input Real elmt_J5;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_k4;
    input Real elmt_J3;
    input Real elmt_J4;
    input Real elmt_k12_double_prime;
    input Real elmt_k12_prime;
    input Real elmt_mu;
    input Real elmt_k4_prime;
    input Real elmt_preMPF;
    input Real elmt_kwee;
    input Real elmt_rum1T;
    input Real elmt_k2_prime;
    input Real elmt_k25;
    input Real elmt_J10;
    input Real elmt_SK;

    Real elmt_R7(unit = "") "ste9 phosphorylation (inactivation) by starter kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant6 "";
    Real elmt_R16(unit = "") "SK dependent rum1T inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant15 "";
    Real elmt_R8(unit = "") "slp1T activation by MPF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_R17(unit = "") "SK synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product16 "";
    Real elmt_R5(unit = "") "preMPF inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_R14(unit = "") "IEP inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant13 "";
    Real elmt_R6(unit = "") "slp1 dependent ste9 activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product5 "";
    Real elmt_R15(unit = "") "rum1T activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product14 "";
    Real elmt_R3(unit = "") "wee1 dependent MPF inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product2 "";
    Real elmt_R12(unit = "") "slp1 inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant11 "";
    Real elmt_R4(unit = "") "cdc25 dependent preMPF phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_R13(unit = "") "Intermediary enzyme activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product12 "";
    Real elmt_R1(unit = "") "cdc13T synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_R10(unit = "") "slp1 activation by intermediary enzyme";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_R2(unit = "") "Targeting cdc13T to APC core";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_R11(unit = "") "slp1 inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant10 "";
    Real elmt_R9(unit = "") "slp1T inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant8 "";
    Real elmt_R18(unit = "") "SK degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant17 "";
    Real elmt_R19(unit = "") "Cell growth";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product18 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_R7 = ((((elmt_k4_prime * elmt_SK) + (elmt_k4 * elmt_MPF)) * elmt_ste9) / (elmt_J4 + elmt_ste9));
        elmt_R16 = ((elmt_k12 + (elmt_k12_prime * elmt_SK) + (elmt_k12_double_prime * elmt_MPF)) * elmt_rum1T);
        elmt_R8 = (elmt_k5_prime + ((elmt_k5_double_prime * Functions.pow(elmt_MPF, 4.0)) / (Functions.pow(elmt_J5, 4.0) + Functions.pow(elmt_MPF, 4.0))));
        elmt_R17 = (elmt_k13 * elmt_TF);
        elmt_R5 = ((elmt_k2_prime + (elmt_k2_double_prime * elmt_ste9) + (elmt_k2_triple_prime * elmt_slp1)) * elmt_preMPF);
        elmt_R14 = ((elmt_k10 * elmt_IEP) / (elmt_J10 + elmt_IEP));
        elmt_R6 = (((elmt_k3_prime + (elmt_k3_double_prime * elmt_slp1)) * (1.0 - elmt_ste9)) / ((elmt_J3 + 1.0) - elmt_ste9));
        elmt_R15 = elmt_k11;
        elmt_R3 = (elmt_kwee * (elmt_cdc13T - elmt_preMPF));
        elmt_R12 = (elmt_k6 * elmt_slp1);
        elmt_R4 = (elmt_k25 * elmt_preMPF);
        elmt_R13 = ((elmt_k9 * elmt_MPF * (1.0 - elmt_IEP)) / ((elmt_J9 + 1.0) - elmt_IEP));
        elmt_R1 = (elmt_k1 * elmt_M);
        elmt_R10 = ((elmt_k7 * elmt_IEP * (elmt_slp1T - elmt_slp1)) / ((elmt_J7 + elmt_slp1T) - elmt_slp1));
        elmt_R2 = ((elmt_k2_prime + (elmt_k2_double_prime * elmt_ste9) + (elmt_k2_triple_prime * elmt_slp1)) * elmt_cdc13T);
        elmt_R11 = ((elmt_k8 * elmt_slp1) / (elmt_J8 + elmt_slp1));
        elmt_R9 = (elmt_k6 * elmt_slp1T);
        elmt_R18 = (elmt_k14 * elmt_SK);
        elmt_R19 = (elmt_mu * elmt_M);
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product18) = 0;

end Reactions;
