within BIOMD067;
class Reactions

    input Real elmt_Keq;
    input Real elmt_Kg3;
    input Real elmt_Kg1;
    input Real elmt_compartment;
    input Real elmt_n;
    input Real elmt_Kg2;
    input Real elmt_Acs;
    input Real elmt_HOAc_E;
    input Real elmt_kAck_r;
    input Real elmt_Pta;
    input Real elmt_HOAc;
    input Real elmt_alpha3;
    input Real elmt_S0;
    input Real elmt_KM1;
    input Real elmt_KM2;
    input Real elmt_alpha1;
    input Real elmt_AcP;
    input Real elmt_alpha2;
    input Real elmt_kTCA;
    input Real elmt_alpha0;
    input Real elmt_k1;
    input Real elmt_OAc;
    input Real elmt_H;
    input Real elmt_AcCoA;
    input Real elmt_C;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_LacI;
    input Real elmt_kAck_f;
    input Real elmt_kd;

    Real elmt_V_Ack(unit = "") "Acetate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_R_dAcs(unit = "") "Acs degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant16 "";
    Real elmt_V_out(unit = "") "Intercellular transport of Acetate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_R_LacI(unit = "") "LacI synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product12 "";
    Real elmt_R_Acs(unit = "") "Acetyl-CoA synthase synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product13 "";
    Real elmt_V_Ace(unit = "") "Acid-base equilibrium";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_V_TCA(unit = "") "Flux to TCA cycle";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_R_Pta(unit = "") "Phosphate acetyl transferase synthase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product14 "";
    Real elmt_R_dLacI(unit = "") "LacI degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant15 "";
    Real elmt_V_gly(unit = "") "Glycolytic flux";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product0 "";
    Real elmt_V_Pta(unit = "") "Phosphate acetyl transferase flux";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_V_Acs(unit = "") "Acetyl-CoA synthase flux";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_R_dPta(unit = "") "Pta degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant17 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product12 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_V_Ack = (elmt_compartment * ((elmt_kAck_f * elmt_AcP) - (elmt_kAck_r * elmt_OAc)));
        elmt_R_dAcs = (elmt_compartment * elmt_kd * elmt_Acs);
        elmt_V_out = (elmt_compartment * elmt_k3 * (elmt_HOAc - elmt_HOAc_E));
        elmt_R_LacI = (elmt_compartment * (((elmt_alpha1 * Functions.pow((elmt_AcP / elmt_Kg1), elmt_n)) / (1.0 + Functions.pow((elmt_AcP / elmt_Kg1), elmt_n))) + elmt_alpha0));
        elmt_R_Acs = (elmt_compartment * (((elmt_alpha2 * Functions.pow((elmt_AcP / elmt_Kg2), elmt_n)) / (1.0 + Functions.pow((elmt_AcP / elmt_Kg2), elmt_n))) + elmt_alpha0));
        elmt_V_Ace = (elmt_compartment * elmt_C * ((elmt_OAc * elmt_H) - (elmt_Keq * elmt_HOAc)));
        elmt_V_TCA = (elmt_compartment * elmt_kTCA * elmt_AcCoA);
        elmt_R_Pta = ((elmt_alpha3 / (1.0 + Functions.pow((elmt_LacI / elmt_Kg3), elmt_n))) + elmt_alpha0);
        elmt_R_dLacI = (elmt_compartment * elmt_kd * elmt_LacI);
        elmt_V_gly = (elmt_compartment * elmt_S0);
        elmt_V_Pta = ((elmt_compartment * elmt_k1 * elmt_Pta * elmt_AcCoA) / (elmt_KM1 + elmt_AcCoA));
        elmt_V_Acs = ((elmt_compartment * elmt_k2 * elmt_Acs * elmt_OAc) / (elmt_KM2 + elmt_OAc));
        elmt_R_dPta = (elmt_compartment * elmt_kd * elmt_Pta);
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;

end Reactions;
