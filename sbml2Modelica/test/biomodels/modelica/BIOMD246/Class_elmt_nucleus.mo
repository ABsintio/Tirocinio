within BIOMD246;
class Class_elmt_nucleus

    input Real elmt_product40;
    input Real elmt_reactant51;
    input Real elmt_IN_degradation;
    input Real elmt_reactant41;
    input Real elmt_PCNP_degradation;
    input Real elmt_reactant52;
    input Real elmt_product50;
    input Real elmt_PCN_degradation;
    input Real elmt_IN_formation;
    input Real elmt_PCC_shuttling;
    input Real elmt_PCN_phosphorylation;
    input Real elmt_BN_phosphorylation;
    input Real elmt_reactant36;
    input Real elmt_reactant37;
    input Real elmt_reactant38;
    input Real elmt_reactant49;
    input Real elmt_BN_degradation;
    input Real elmt_reactant39;
    input Real elmt_reactant34;
    input Real elmt_BC_shuttling;
    input Real elmt_product35;
    input Real elmt_BNP_degradation;
    input Real elmt_product46;
    input Real elmt_product29;

    Real elmt_nucleus(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_I_N_conc(unit = "");
    Real elmt_I_N_amount(unit = "");
    Real elmt_I_N(unit = "") "I_N";
    Real elmt_PC_NP_conc(unit = "");
    Real elmt_PC_NP_amount(unit = "");
    Real elmt_PC_NP(unit = "") "PC_NP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_B_NP_conc(unit = "");
    Real elmt_B_NP_amount(unit = "");
    Real elmt_B_NP(unit = "") "B_NP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_B_N_conc(unit = "");
    Real elmt_B_N_amount(unit = "");
    Real elmt_B_N(unit = "") "B_N";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_PC_N_conc(unit = "");
    Real elmt_PC_N_amount(unit = "");
    Real elmt_PC_N(unit = "") "PC_N";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_nucleus = 1.0;
        elmt_I_N_conc = 0.05;
        elmt_PC_NP_conc = 0.091;
        elmt_B_NP_conc = 0.32;
        elmt_B_N_conc = 1.94;
        elmt_PC_N_conc = 0.16;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_I_N = elmt_I_N_conc;
        elmt_PC_NP = elmt_PC_NP_conc;
        elmt_B_NP = elmt_B_NP_conc;
        elmt_B_N = elmt_B_N_conc;
        elmt_PC_N = elmt_PC_N_conc;
        der(elmt_I_N_amount) = ((- (elmt_IN_degradation * elmt_reactant41)) + (elmt_IN_formation * elmt_product40));
        der(elmt_PC_NP_amount) = ((- (elmt_PCNP_degradation * elmt_reactant37)) + (elmt_PCN_phosphorylation * elmt_product35));
        der(elmt_B_NP_amount) = ((- (elmt_BNP_degradation * elmt_reactant52)) + (elmt_BN_phosphorylation * elmt_product50));
        der(elmt_B_N_amount) = ((- (elmt_IN_formation * elmt_reactant38)) + (- (elmt_BN_degradation * elmt_reactant51)) + (- (elmt_BN_phosphorylation * elmt_reactant49)) + (elmt_BC_shuttling * elmt_product46));
        der(elmt_PC_N_amount) = ((- (elmt_IN_formation * elmt_reactant39)) + (- (elmt_PCN_degradation * elmt_reactant36)) + (elmt_PCC_shuttling * elmt_product29) + (- (elmt_PCN_phosphorylation * elmt_reactant34)));

    algorithm
        elmt_I_N_conc := elmt_I_N_amount / elmt_nucleus;
        elmt_PC_NP_conc := elmt_PC_NP_amount / elmt_nucleus;
        elmt_B_NP_conc := elmt_B_NP_amount / elmt_nucleus;
        elmt_B_N_conc := elmt_B_N_amount / elmt_nucleus;
        elmt_PC_N_conc := elmt_PC_N_amount / elmt_nucleus;
end Class_elmt_nucleus;
