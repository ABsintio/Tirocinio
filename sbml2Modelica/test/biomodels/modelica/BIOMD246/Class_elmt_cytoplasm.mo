within BIOMD246;
class Class_elmt_cytoplasm

    input Real elmt_MP_decay;
    input Real elmt_product31;
    input Real elmt_reactant47;
    input Real elmt_reactant48;
    input Real elmt_CC_translation;
    input Real elmt_theta_Na;
    input Real elmt_reactant43;
    input Real elmt_Na_ex;
    input Real elmt_reactant45;
    input Real elmt_CC_degradation;
    input Real elmt_PCC_degradation;
    input Real elmt_v3;
    input Real elmt_MC_decay;
    input Real elmt_product25;
    input Real elmt_v1;
    input Real elmt_v_GABA;
    input Real elmt_v2;
    input Real elmt_MP_transcription;
    input Real elmt_PC_degradation;
    input Real elmt_product44;
    input Real elmt_product42;
    input Real elmt_CB_activation;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_PCP_degradation;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_reactant55;
    input Real elmt_reactant12;
    input Real elmt_BC_shuttling;
    input Real elmt_MB_decay;
    input Real elmt_v_ca_out;
    input Real elmt_MC_transcription;
    input Real elmt_CC_phosphorylation;
    input Real elmt_BCP_degradation;
    input Real elmt_PC_phosphorylation;
    input Real elmt_PCCP_degradation;
    input Real elmt_theta_K;
    input Real elmt_reactant20;
    input Real elmt_product11;
    input Real elmt_product54;
    input Real elmt_product53;
    input Real elmt_reactant26;
    input Real elmt_reactant27;
    input Real elmt_reactant28;
    input Real elmt_reactant23;
    input Real elmt_reactant24;
    input Real elmt_BC_translation;
    input Real elmt_CCP_degradation;
    input Real elmt_BC_degradation;
    input Real elmt_reactant19;
    input Real elmt_v_Ca_leak;
    input Real elmt_PC_translation;
    input Real elmt_vo;
    input Real elmt_MB_transcription;
    input Real elmt_product9;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_PCC_formation;
    input Real elmt_reactant30;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_PCC_shuttling;
    input Real elmt_product22;
    input Real elmt_VIP_depletion;
    input Real elmt_product21;
    input Real elmt_product0;
    input Real elmt_BC_phosphorylation;
    input Real elmt_reactant32;
    input Real elmt_reactant33;
    input Real elmt_K_ex;
    input Real elmt_product2;
    input Real elmt_VIP_accumulation;
    input Real elmt_K_GABA;
    input Real elmt_product15;
    input Real elmt_PCC_phosphorylation;
    input Real elmt_product13;
    input Real elmt_product18;

    Real elmt_cytoplasm(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Na_in_conc(unit = "");
    Real elmt_Na_in_amount(unit = "");
    Real elmt_Na_in(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P_C_conc(unit = "");
    Real elmt_P_C_amount(unit = "");
    Real elmt_P_C(unit = "") "P_C";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_M_C_conc(unit = "");
    Real elmt_M_C_amount(unit = "");
    Real elmt_M_C(unit = "") "M_C";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CB_conc(unit = "");
    Real elmt_CB_amount(unit = "");
    Real elmt_CB(unit = "") "CB";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_PC_CP_conc(unit = "");
    Real elmt_PC_CP_amount(unit = "");
    Real elmt_PC_CP(unit = "") "PC_CP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_C_CP_conc(unit = "");
    Real elmt_C_CP_amount(unit = "");
    Real elmt_C_CP(unit = "") "C_CP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_B_CP_conc(unit = "");
    Real elmt_B_CP_amount(unit = "");
    Real elmt_B_CP(unit = "") "B_CP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_M_P_conc(unit = "");
    Real elmt_M_P_amount(unit = "");
    Real elmt_M_P(unit = "") "M_P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_VIP_conc(unit = "");
    Real elmt_VIP_amount(unit = "");
    Real elmt_VIP(unit = "") "VIP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Ca_in_conc(unit = "");
    Real elmt_Ca_in_amount(unit = "");
    Real elmt_Ca_in(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_C_C_conc(unit = "");
    Real elmt_C_C_amount(unit = "");
    Real elmt_C_C(unit = "") "C_C";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_PC_C_conc(unit = "");
    Real elmt_PC_C_amount(unit = "");
    Real elmt_PC_C(unit = "") "PC_C";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_B_C_conc(unit = "");
    Real elmt_B_C_amount(unit = "");
    Real elmt_B_C(unit = "") "B_C";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P_CP_conc(unit = "");
    Real elmt_P_CP_amount(unit = "");
    Real elmt_P_CP(unit = "") "P_CP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GABA_o_conc(unit = "");
    Real elmt_GABA_o_amount(unit = "");
    Real elmt_GABA_o(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Cl_o_conc(unit = "");
    Real elmt_Cl_o_amount(unit = "");
    Real elmt_Cl_o(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_M_B_conc(unit = "");
    Real elmt_M_B_amount(unit = "");
    Real elmt_M_B(unit = "") "M_B";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_K_in_conc(unit = "");
    Real elmt_K_in_amount(unit = "");
    Real elmt_K_in(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GABA_conc(unit = "");
    Real elmt_GABA_amount(unit = "");
    Real elmt_GABA(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cytoplasm = 1.0;
        elmt_P_C_conc = 0.4;
        elmt_M_C_conc = 2.0;
        elmt_CB_conc = 0.12;
        elmt_PC_CP_conc = 0.2;
        elmt_C_CP_conc = 9.0;
        elmt_B_CP_conc = 0.48;
        elmt_M_P_conc = 2.8;
        elmt_VIP_conc = 0.0;
        elmt_Ca_in_conc = 0.1;
        elmt_C_C_conc = 12.0;
        elmt_PC_C_conc = 1.26;
        elmt_B_C_conc = 2.41;
        elmt_P_CP_conc = 0.13;
        elmt_GABA_o_conc = 0.2;
        elmt_Cl_o_conc = 1.0;
        elmt_M_B_conc = 7.94;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_Na_in = elmt_Na_in_conc;
        elmt_P_C = elmt_P_C_conc;
        elmt_M_C = elmt_M_C_conc;
        elmt_CB = elmt_CB_conc;
        elmt_PC_CP = elmt_PC_CP_conc;
        elmt_C_CP = elmt_C_CP_conc;
        elmt_B_CP = elmt_B_CP_conc;
        elmt_M_P = elmt_M_P_conc;
        elmt_VIP = elmt_VIP_conc;
        elmt_Ca_in = elmt_Ca_in_conc;
        elmt_C_C = elmt_C_C_conc;
        elmt_PC_C = elmt_PC_C_conc;
        elmt_B_C = elmt_B_C_conc;
        elmt_P_CP = elmt_P_CP_conc;
        elmt_GABA_o = elmt_GABA_o_conc;
        elmt_Cl_o = elmt_Cl_o_conc;
        elmt_M_B = elmt_M_B_conc;
        elmt_K_in = elmt_K_in_conc;
        elmt_GABA = elmt_GABA_conc;
        elmt_Na_in_amount = (elmt_Na_ex / elmt_theta_Na) * elmt_cytoplasm;
        der(elmt_GABA_o_amount) = 0;
        der(elmt_Cl_o_amount) = 0;
        elmt_K_in_amount = (elmt_K_ex / elmt_theta_K) * elmt_cytoplasm;
        elmt_GABA_amount = (elmt_GABA_o + ((elmt_v_GABA * elmt_VIP) / (elmt_K_GABA + elmt_VIP))) * elmt_cytoplasm;
        der(elmt_P_C_amount) = ((elmt_PC_translation * elmt_product15) + (- (elmt_PCC_formation * elmt_reactant19)) + (- (elmt_PC_degradation * elmt_reactant16)) + (- (elmt_PC_phosphorylation * elmt_reactant17)));
        der(elmt_M_C_amount) = ((- (elmt_MC_decay * elmt_reactant12)) + (elmt_MC_transcription * elmt_product11));
        der(elmt_CB_amount) = (elmt_CB_activation * elmt_product53);
        der(elmt_PC_CP_amount) = ((elmt_PCC_phosphorylation * elmt_product31) + (- (elmt_PCCP_degradation * elmt_reactant33)));
        der(elmt_C_CP_amount) = ((- (elmt_CCP_degradation * elmt_reactant27)) + (elmt_CC_phosphorylation * elmt_product25));
        der(elmt_B_CP_amount) = ((elmt_BC_phosphorylation * elmt_product44) + (- (elmt_BCP_degradation * elmt_reactant48)));
        der(elmt_M_P_amount) = ((- (elmt_MP_decay * elmt_reactant10)) + (elmt_MP_transcription * elmt_product9));
        der(elmt_VIP_amount) = ((- (elmt_VIP_depletion * elmt_reactant55)) + (elmt_VIP_accumulation * elmt_product54));
        der(elmt_Ca_in_amount) = ((elmt_v_Ca_leak * elmt_product8) + (elmt_v3 * elmt_product6) + (elmt_v1 * elmt_product2) + (- (elmt_v2 * elmt_reactant3)) + (elmt_vo * elmt_product0) + (- (elmt_v_ca_out * elmt_reactant1)));
        der(elmt_C_C_amount) = ((elmt_CC_translation * elmt_product22) + (- (elmt_CC_degradation * elmt_reactant23)) + (- (elmt_PCC_formation * elmt_reactant20)) + (- (elmt_CC_phosphorylation * elmt_reactant24)));
        der(elmt_PC_C_amount) = ((- (elmt_PCC_degradation * elmt_reactant32)) + (elmt_PCC_formation * elmt_product21) + (- (elmt_PCC_shuttling * elmt_reactant28)) + (- (elmt_PCC_phosphorylation * elmt_reactant30)));
        der(elmt_B_C_amount) = ((elmt_BC_translation * elmt_product42) + (- (elmt_BC_degradation * elmt_reactant47)) + (- (elmt_BC_phosphorylation * elmt_reactant43)) + (- (elmt_BC_shuttling * elmt_reactant45)));
        der(elmt_P_CP_amount) = ((- (elmt_PCP_degradation * elmt_reactant26)) + (elmt_PC_phosphorylation * elmt_product18));
        der(elmt_M_B_amount) = ((elmt_MB_transcription * elmt_product13) + (- (elmt_MB_decay * elmt_reactant14)));

    algorithm
        elmt_Na_in_conc := elmt_Na_in_amount / elmt_cytoplasm;
        elmt_P_C_conc := elmt_P_C_amount / elmt_cytoplasm;
        elmt_M_C_conc := elmt_M_C_amount / elmt_cytoplasm;
        elmt_CB_conc := elmt_CB_amount / elmt_cytoplasm;
        elmt_PC_CP_conc := elmt_PC_CP_amount / elmt_cytoplasm;
        elmt_C_CP_conc := elmt_C_CP_amount / elmt_cytoplasm;
        elmt_B_CP_conc := elmt_B_CP_amount / elmt_cytoplasm;
        elmt_M_P_conc := elmt_M_P_amount / elmt_cytoplasm;
        elmt_VIP_conc := elmt_VIP_amount / elmt_cytoplasm;
        elmt_Ca_in_conc := elmt_Ca_in_amount / elmt_cytoplasm;
        elmt_C_C_conc := elmt_C_C_amount / elmt_cytoplasm;
        elmt_PC_C_conc := elmt_PC_C_amount / elmt_cytoplasm;
        elmt_B_C_conc := elmt_B_C_amount / elmt_cytoplasm;
        elmt_P_CP_conc := elmt_P_CP_amount / elmt_cytoplasm;
        elmt_GABA_o_conc := elmt_GABA_o_amount / elmt_cytoplasm;
        elmt_Cl_o_conc := elmt_Cl_o_amount / elmt_cytoplasm;
        elmt_M_B_conc := elmt_M_B_amount / elmt_cytoplasm;
        elmt_K_in_conc := elmt_K_in_amount / elmt_cytoplasm;
        elmt_GABA_conc := elmt_GABA_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
