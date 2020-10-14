within BIOMD184;
model Lavrentovich2008_Ca_Oscillations "Lavrentovich2008_Ca_Oscillations" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;
    Class_elmt_ER elmt_ER;

    equation
        Reacs.elmt_kp = Params.elmt_kp;
        Reacs.elmt_m = Params.elmt_m;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_kdeg = Params.elmt_kdeg;
        Reacs.elmt_ER = elmt_ER.elmt_ER;
        Reacs.elmt_k_CaA = Params.elmt_k_CaA;
        Reacs.elmt_vM3 = Params.elmt_vM3;
        Reacs.elmt_vM2 = Params.elmt_vM2;
        Reacs.elmt_vin = Params.elmt_vin;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k_CaI = Params.elmt_k_CaI;
        Reacs.elmt_kout = Params.elmt_kout;
        Reacs.elmt_Y = elmt_ER.elmt_Y;
        Reacs.elmt_Z = elmt_compartment.elmt_Z;
        Reacs.elmt_kip3 = Params.elmt_kip3;
        Reacs.elmt_X = elmt_compartment.elmt_X;
        Reacs.elmt_kf = Params.elmt_kf;
        Reacs.elmt_vp = Params.elmt_vp;
        elmt_ER.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_ER.elmt_R5 = Reacs.elmt_R5;
        elmt_ER.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_ER.elmt_R3 = Reacs.elmt_R3;
        elmt_ER.elmt_R4 = Reacs.elmt_R4;
        elmt_ER.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;

end Lavrentovich2008_Ca_Oscillations;
