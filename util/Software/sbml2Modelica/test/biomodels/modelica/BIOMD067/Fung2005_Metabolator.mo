within BIOMD067;
model Fung2005_Metabolator "Fung2005_Metabolic_Oscillator" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_Keq = Params.elmt_Keq;
        Reacs.elmt_Kg3 = Params.elmt_Kg3;
        Reacs.elmt_Kg1 = Params.elmt_Kg1;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_Kg2 = Params.elmt_Kg2;
        Reacs.elmt_Acs = elmt_compartment.elmt_Acs;
        Reacs.elmt_HOAc_E = elmt_compartment.elmt_HOAc_E;
        Reacs.elmt_kAck_r = Params.elmt_kAck_r;
        Reacs.elmt_Pta = elmt_compartment.elmt_Pta;
        Reacs.elmt_HOAc = elmt_compartment.elmt_HOAc;
        Reacs.elmt_alpha3 = Params.elmt_alpha3;
        Reacs.elmt_S0 = Params.elmt_S0;
        Reacs.elmt_KM1 = Params.elmt_KM1;
        Reacs.elmt_KM2 = Params.elmt_KM2;
        Reacs.elmt_alpha1 = Params.elmt_alpha1;
        Reacs.elmt_AcP = elmt_compartment.elmt_AcP;
        Reacs.elmt_alpha2 = Params.elmt_alpha2;
        Reacs.elmt_kTCA = Params.elmt_kTCA;
        Reacs.elmt_alpha0 = Params.elmt_alpha0;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_OAc = elmt_compartment.elmt_OAc;
        Reacs.elmt_H = Params.elmt_H;
        Reacs.elmt_AcCoA = elmt_compartment.elmt_AcCoA;
        Reacs.elmt_C = Params.elmt_C;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_LacI = elmt_compartment.elmt_LacI;
        Reacs.elmt_kAck_f = Params.elmt_kAck_f;
        Reacs.elmt_kd = Params.elmt_kd;
        elmt_compartment.elmt_V_Ack = Reacs.elmt_V_Ack;
        elmt_compartment.elmt_R_dAcs = Reacs.elmt_R_dAcs;
        elmt_compartment.elmt_R_Acs = Reacs.elmt_R_Acs;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_V_Ace = Reacs.elmt_V_Ace;
        elmt_compartment.elmt_R_dLacI = Reacs.elmt_R_dLacI;
        elmt_compartment.elmt_R_Pta = Reacs.elmt_R_Pta;
        elmt_compartment.elmt_V_TCA = Reacs.elmt_V_TCA;
        elmt_compartment.elmt_V_gly = Reacs.elmt_V_gly;
        elmt_compartment.elmt_V_Acs = Reacs.elmt_V_Acs;
        elmt_compartment.elmt_R_dPta = Reacs.elmt_R_dPta;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_R_LacI = Reacs.elmt_R_LacI;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_V_out = Reacs.elmt_V_out;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_V_Pta = Reacs.elmt_V_Pta;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;

end Fung2005_Metabolator;
