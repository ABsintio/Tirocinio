within BIOMD269;
class Reactions

    input Real elmt_CK_ex;
    input Real elmt_k12a;
    input Real elmt_k18a;
    input Real elmt_k16a;
    input Real elmt_k_ethylene;
    input Real elmt_k10a;
    input Real elmt_k1a;
    input Real elmt_k3a;
    input Real elmt_Ra_star;
    input Real elmt_PLSp;
    input Real elmt_CTR1_star;
    input Real elmt_ET;
    input Real elmt_compartment_1;
    input Real elmt_k16;
    input Real elmt_X;
    input Real elmt_k15;
    input Real elmt_k14;
    input Real elmt_k13;
    input Real elmt_k12;
    input Real elmt_k11;
    input Real elmt_k10;
    input Real elmt_PLSm;
    input Real elmt_k1;
    input Real elmt_k6a;
    input Real elmt_k19;
    input Real elmt_k18;
    input Real elmt_k17;
    input Real elmt_k8;
    input Real elmt_k_auxin;
    input Real elmt_k9;
    input Real elmt_Auxin;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_k4;
    input Real elmt_k2c;
    input Real elmt_k2b;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_k2a;
    input Real elmt_k3;
    input Real elmt_CK;
    input Real elmt_Re;
    input Real elmt_CTR1;
    input Real elmt_Ra;
    input Real elmt_ACC;
    input Real elmt_k_cytokinin;
    input Real elmt_Re_star;
    input Real elmt_IAA;

    Real elmt_v_Auxin(unit = "") "vAuxin: Uptake rate of exogenous auxin (indole-3-acetic acid, IAA)";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_v_Cytokinin(unit = "") "vCytokinin: Uptake rate of exogenous cytokinin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reaction_3(unit = "") "v3: Auxin removal from the cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reaction_4(unit = "") "v4: Conversion of auxin receptor from the inactivated form to the activated form";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction_1(unit = "") "v1: Auxin Transport to the cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_v_Ethylene(unit = "") "vEthylene: Uptake rate of exogenous ACC (1-aminocyclopropane-1-carboxylic acid)";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_reaction_2(unit = "") "v2: Auxin biosynthesis in the cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reaction_16(unit = "") "v16: Activation of the downstream of ethylene signalling response is inhibited by  CTR1*";
    Real elmt_product21 "";
    Real elmt_reaction_17(unit = "") "v17: Removal of the unknown molecule X";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant22 "";
    Real elmt_reaction_9(unit = "") "v9: Decay of protein of POLARIS gene";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant10 "";
    Real elmt_reaction_14(unit = "") "v14: Conversion of the inactivated form of CTR1 protein to its activated form by Re*";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_reaction_15(unit = "") "v15: Conversion of the activated form of CTR1 protein to its inactivated form";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_reaction_7(unit = "") "v7: Decay of mRNA of POLARIS gene";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant8 "";
    Real elmt_reaction_8(unit = "") "v8: Translation of POLARIS gene";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_reaction_5(unit = "") "v5: Conversion of  auxin receptor from the activated form   to the inactivated form";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_18(unit = "") "v18: Biosynthesis of cytokinin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product23 "";
    Real elmt_reaction_6(unit = "") "v6: Transcription of POLARIS gene";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_reaction_19(unit = "") "v19: removal of cytokinin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant24 "";
    Real elmt_reaction_12(unit = "") "v12: Ethylene biosynthesis ";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product15 "";
    Real elmt_reaction_13(unit = "") "v13: Removal of ethylene";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant16 "";
    Real elmt_reaction_10(unit = "") "v10: Conversion of the inactivated form of ethylene receptor to its activated form by PLSp ";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_11(unit = "") "v11: Conversion of the activated form of ethylene receptor to its inactivated form";
    Real elmt_product14 "";
    Real elmt_reactant13 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product26 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product20 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_v_Auxin = (elmt_compartment_1 * elmt_k_auxin * elmt_IAA);
        elmt_v_Cytokinin = (elmt_compartment_1 * elmt_k_cytokinin * elmt_CK_ex);
        elmt_reaction_3 = (elmt_compartment_1 * (((elmt_k3 + (elmt_k3a * elmt_X)) * elmt_Auxin)));
        elmt_reaction_4 = (elmt_compartment_1 * ((elmt_k4 * elmt_Auxin * elmt_Ra)));
        elmt_reaction_1 = (elmt_compartment_1 * ((elmt_k1a / (1.0 + (elmt_X / elmt_k1)))));
        elmt_v_Ethylene = (elmt_compartment_1 * elmt_k_ethylene * elmt_ACC);
        elmt_reaction_2 = (elmt_compartment_1 * ((elmt_k2 + (elmt_k2a * (elmt_ET / (1.0 + (elmt_CK / elmt_k2b))) * (elmt_PLSp / (elmt_k2c + elmt_PLSp))))));
        elmt_reaction_16 = (elmt_compartment_1 * ((elmt_k16 - (elmt_k16a * elmt_CTR1_star))));
        elmt_reaction_17 = (elmt_compartment_1 * ((elmt_k17 * elmt_X)));
        elmt_reaction_9 = (elmt_compartment_1 * ((elmt_k9 * elmt_PLSp)));
        elmt_reaction_14 = (elmt_compartment_1 * ((elmt_k14 * elmt_Re_star * elmt_CTR1)));
        elmt_reaction_15 = (elmt_compartment_1 * ((elmt_k15 * elmt_CTR1_star)));
        elmt_reaction_7 = (elmt_compartment_1 * ((elmt_k7 * elmt_PLSm)));
        elmt_reaction_8 = (elmt_compartment_1 * ((elmt_k8 * elmt_PLSm)));
        elmt_reaction_5 = (elmt_compartment_1 * elmt_k5 * elmt_Ra_star);
        elmt_reaction_18 = (elmt_compartment_1 * ((elmt_k18a / (1.0 + (elmt_Auxin / elmt_k18)))));
        elmt_reaction_6 = (elmt_compartment_1 * (((elmt_k6 * elmt_Ra_star) / (1.0 + (elmt_ET / elmt_k6a)))));
        elmt_reaction_19 = (elmt_compartment_1 * ((elmt_k19 * elmt_CK)));
        elmt_reaction_12 = (elmt_compartment_1 * ((elmt_k12 + (elmt_k12a * elmt_Auxin * elmt_CK))));
        elmt_reaction_13 = (elmt_compartment_1 * ((elmt_k13 * elmt_ET)));
        elmt_reaction_10 = (elmt_compartment_1 * (((elmt_k10 + (elmt_k10a * elmt_PLSp)) * elmt_Re)));
        elmt_reaction_11 = (elmt_compartment_1 * ((elmt_k11 * elmt_Re_star * elmt_ET)));
        der(elmt_product30) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product26) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_product18) = 0;

end Reactions;
