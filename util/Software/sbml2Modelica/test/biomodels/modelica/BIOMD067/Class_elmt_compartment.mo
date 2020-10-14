within BIOMD067;
class Class_elmt_compartment

    input Real elmt_V_Ack;
    input Real elmt_R_dAcs;
    input Real elmt_R_Acs;
    input Real elmt_product12;
    input Real elmt_product11;
    input Real elmt_V_Ace;
    input Real elmt_R_dLacI;
    input Real elmt_R_Pta;
    input Real elmt_V_TCA;
    input Real elmt_V_gly;
    input Real elmt_V_Acs;
    input Real elmt_R_dPta;
    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_R_LacI;
    input Real elmt_reactant6;
    input Real elmt_V_out;
    input Real elmt_reactant8;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_V_Pta;
    input Real elmt_product14;
    input Real elmt_product13;

    Real elmt_compartment(unit = "") "Intracellular";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_OAc_conc(unit = "");
    Real elmt_OAc_amount(unit = "");
    Real elmt_OAc(unit = "") "Acetate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Acs_conc(unit = "");
    Real elmt_Acs_amount(unit = "");
    Real elmt_Acs(unit = "") "Acetyl-CoA synthase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_HOAc_E_conc(unit = "");
    Real elmt_HOAc_E_amount(unit = "");
    Real elmt_HOAc_E(unit = "") "acetate export";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_LacI_conc(unit = "");
    Real elmt_LacI_amount(unit = "");
    Real elmt_LacI(unit = "") "lac repressor";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Pta_conc(unit = "");
    Real elmt_Pta_amount(unit = "");
    Real elmt_Pta(unit = "") "Phosphate acetyl transferase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_AcCoA_conc(unit = "");
    Real elmt_AcCoA_amount(unit = "");
    Real elmt_AcCoA(unit = "") "Acetyl-CoA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_AcP_conc(unit = "");
    Real elmt_AcP_amount(unit = "");
    Real elmt_AcP(unit = "") "Acetyl phosphate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_HOAc_conc(unit = "");
    Real elmt_HOAc_amount(unit = "");
    Real elmt_HOAc(unit = "") "protonated acetate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_OAc_conc = 0.0;
        elmt_Acs_conc = 0.0;
        elmt_HOAc_E_conc = 0.0;
        elmt_LacI_conc = 0.0;
        elmt_Pta_conc = 0.0;
        elmt_AcCoA_conc = 0.0;
        elmt_AcP_conc = 0.0;
        elmt_HOAc_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_OAc = elmt_OAc_conc;
        elmt_Acs = elmt_Acs_conc;
        elmt_HOAc_E = elmt_HOAc_E_conc;
        elmt_LacI = elmt_LacI_conc;
        elmt_Pta = elmt_Pta_conc;
        elmt_AcCoA = elmt_AcCoA_conc;
        elmt_AcP = elmt_AcP_conc;
        elmt_HOAc = elmt_HOAc_conc;
        der(elmt_HOAc_E_amount) = 0;
        der(elmt_OAc_amount) = ((elmt_V_Ack * elmt_product7) + (- (elmt_V_Ace * elmt_reactant10)) + (- (elmt_V_Acs * elmt_reactant8)));
        der(elmt_Acs_amount) = ((- (elmt_R_dAcs * elmt_reactant16)) + (elmt_R_Acs * elmt_product13));
        der(elmt_LacI_amount) = ((elmt_R_LacI * elmt_product12) + (- (elmt_R_dLacI * elmt_reactant15)));
        der(elmt_Pta_amount) = ((elmt_R_Pta * elmt_product14) + (- (elmt_R_dPta * elmt_reactant17)));
        der(elmt_AcCoA_amount) = ((- (elmt_V_TCA * elmt_reactant1)) + (elmt_V_gly * elmt_product0) + (- (elmt_V_Pta * elmt_reactant4)) + (elmt_V_Acs * elmt_product9));
        der(elmt_AcP_amount) = ((- (elmt_V_Ack * elmt_reactant6)) + (elmt_V_Pta * elmt_product5));
        der(elmt_HOAc_amount) = ((- (elmt_V_out * elmt_reactant2)) + (elmt_V_Ace * elmt_product11));

    algorithm
        elmt_OAc_conc := elmt_OAc_amount / elmt_compartment;
        elmt_Acs_conc := elmt_Acs_amount / elmt_compartment;
        elmt_HOAc_E_conc := elmt_HOAc_E_amount / elmt_compartment;
        elmt_LacI_conc := elmt_LacI_amount / elmt_compartment;
        elmt_Pta_conc := elmt_Pta_amount / elmt_compartment;
        elmt_AcCoA_conc := elmt_AcCoA_amount / elmt_compartment;
        elmt_AcP_conc := elmt_AcP_amount / elmt_compartment;
        elmt_HOAc_conc := elmt_HOAc_amount / elmt_compartment;
end Class_elmt_compartment;
