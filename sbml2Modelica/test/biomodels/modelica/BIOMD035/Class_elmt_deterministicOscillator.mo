within BIOMD035;
class Class_elmt_deterministicOscillator

    input Real elmt_product30;
    input Real elmt_reactant40;
    input Real elmt_product34;
    input Real elmt_product33;
    input Real elmt_product31;
    input Real elmt_reactant9;
    input Real elmt_product25;
    input Real elmt_product24;
    input Real elmt_product28;
    input Real elmt_product41;
    input Real elmt_product42;
    input Real elmt_reactant15;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_product37;
    input Real elmt_product36;
    input Real elmt_product11;
    input Real elmt_reactant26;
    input Real elmt_reactant27;
    input Real elmt_reactant21;
    input Real elmt_reactant23;
    input Real elmt_Reaction9;
    input Real elmt_Reaction8;
    input Real elmt_Reaction7;
    input Real elmt_Reaction6;
    input Real elmt_reactant18;
    input Real elmt_Reaction5;
    input Real elmt_Reaction4;
    input Real elmt_Reaction3;
    input Real elmt_Reaction2;
    input Real elmt_Reaction1;
    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_reactant5;
    input Real elmt_product20;
    input Real elmt_reactant7;
    input Real elmt_Reaction16;
    input Real elmt_Reaction15;
    input Real elmt_reactant38;
    input Real elmt_Reaction14;
    input Real elmt_Reaction13;
    input Real elmt_Reaction12;
    input Real elmt_reactant32;
    input Real elmt_Reaction11;
    input Real elmt_Reaction10;
    input Real elmt_reactant0;
    input Real elmt_reactant35;
    input Real elmt_product2;
    input Real elmt_reactant29;
    input Real elmt_product16;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_deterministicOscillator(unit = "") "";
    Real elmt_MR_amount(unit = "");
    Real elmt_MR_conc(unit = "");
    Real elmt_MR(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MA_amount(unit = "");
    Real elmt_MA_conc(unit = "");
    Real elmt_MA(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_DAp_amount(unit = "");
    Real elmt_DAp_conc(unit = "");
    Real elmt_DAp(unit = "") "";
    Real elmt_EmptySet_amount(unit = "");
    Real elmt_EmptySet_conc(unit = "");
    Real elmt_EmptySet(unit = "") "";
    Real elmt_DRp_amount(unit = "");
    Real elmt_DRp_conc(unit = "");
    Real elmt_DRp(unit = "") "";
    Real elmt_DA_amount(unit = "");
    Real elmt_DA_conc(unit = "");
    Real elmt_DA(unit = "") "";
    Real elmt_DR_amount(unit = "");
    Real elmt_DR_conc(unit = "");
    Real elmt_DR(unit = "") "";
    Real elmt_C_amount(unit = "");
    Real elmt_C_conc(unit = "");
    Real elmt_C(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A_amount(unit = "");
    Real elmt_A_conc(unit = "");
    Real elmt_A(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_amount(unit = "");
    Real elmt_R_conc(unit = "");
    Real elmt_R(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_deterministicOscillator = 1.0;
        elmt_MR_amount = 0.0;
        elmt_MA_amount = 0.0;
        elmt_DAp_amount = 0.0;
        elmt_EmptySet_amount = 0.0;
        elmt_DRp_amount = 0.0;
        elmt_DA_amount = 1.0;
        elmt_DR_amount = 1.0;
        elmt_C_amount = 0.0;
        elmt_A_amount = 0.0;
        elmt_R_amount = 0.0;


    equation
        assert(elmt_deterministicOscillator >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_deterministicOscillator) = 0;
        elmt_MR = elmt_MR_amount;
        elmt_MA = elmt_MA_amount;
        elmt_DAp = elmt_DAp_amount;
        elmt_EmptySet = elmt_EmptySet_amount;
        elmt_DRp = elmt_DRp_amount;
        elmt_DA = elmt_DA_amount;
        elmt_DR = elmt_DR_amount;
        elmt_C = elmt_C_amount;
        elmt_A = elmt_A_amount;
        elmt_R = elmt_R_amount;
        der(elmt_EmptySet_amount) = 0;
        der(elmt_MR_amount) = ((elmt_Reaction16 * elmt_product41) + (- (elmt_Reaction16 * elmt_reactant40)) + (- (elmt_Reaction15 * elmt_reactant38)) + (elmt_Reaction14 * elmt_product37) + (elmt_Reaction13 * elmt_product34));
        der(elmt_MA_amount) = ((elmt_Reaction10 * elmt_product25) + (- (elmt_Reaction10 * elmt_reactant23)) + (- (elmt_Reaction9 * elmt_reactant21)) + (elmt_Reaction8 * elmt_product20) + (elmt_Reaction7 * elmt_product17));
        der(elmt_DAp_amount) = ((- (elmt_Reaction8 * elmt_reactant18)) + (elmt_Reaction8 * elmt_product19) + (- (elmt_Reaction6 * elmt_reactant12)) + (elmt_Reaction5 * elmt_product11));
        der(elmt_DRp_amount) = ((elmt_Reaction14 * elmt_product36) + (- (elmt_Reaction14 * elmt_reactant35)) + (- (elmt_Reaction12 * elmt_reactant29)) + (elmt_Reaction11 * elmt_product28));
        der(elmt_DA_amount) = ((elmt_Reaction7 * elmt_product16) + (- (elmt_Reaction7 * elmt_reactant15)) + (elmt_Reaction6 * elmt_product14) + (- (elmt_Reaction5 * elmt_reactant10)));
        der(elmt_DR_amount) = ((elmt_Reaction13 * elmt_product33) + (- (elmt_Reaction13 * elmt_reactant32)) + (elmt_Reaction12 * elmt_product31) + (- (elmt_Reaction11 * elmt_reactant27)));
        der(elmt_C_amount) = ((- (elmt_Reaction3 * elmt_reactant5)) + (elmt_Reaction1 * elmt_product2));
        der(elmt_A_amount) = ((elmt_Reaction12 * elmt_product30) + (- (elmt_Reaction11 * elmt_reactant26)) + (elmt_Reaction10 * elmt_product24) + (elmt_Reaction6 * elmt_product13) + (- (elmt_Reaction5 * elmt_reactant9)) + (- (elmt_Reaction2 * elmt_reactant3)) + (- (elmt_Reaction1 * elmt_reactant0)));
        der(elmt_R_amount) = ((elmt_Reaction16 * elmt_product42) + (- (elmt_Reaction4 * elmt_reactant7)) + (elmt_Reaction3 * elmt_product6) + (- (elmt_Reaction1 * elmt_reactant1)));

    algorithm
        elmt_MR_conc := elmt_MR_amount / elmt_deterministicOscillator;
        elmt_MA_conc := elmt_MA_amount / elmt_deterministicOscillator;
        elmt_DAp_conc := elmt_DAp_amount / elmt_deterministicOscillator;
        elmt_EmptySet_conc := elmt_EmptySet_amount / elmt_deterministicOscillator;
        elmt_DRp_conc := elmt_DRp_amount / elmt_deterministicOscillator;
        elmt_DA_conc := elmt_DA_amount / elmt_deterministicOscillator;
        elmt_DR_conc := elmt_DR_amount / elmt_deterministicOscillator;
        elmt_C_conc := elmt_C_amount / elmt_deterministicOscillator;
        elmt_A_conc := elmt_A_amount / elmt_deterministicOscillator;
        elmt_R_conc := elmt_R_amount / elmt_deterministicOscillator;
end Class_elmt_deterministicOscillator;
