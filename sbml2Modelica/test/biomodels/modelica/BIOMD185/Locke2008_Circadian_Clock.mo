within BIOMD185;
model Locke2008_Circadian_Clock "Locke2008_Circadian_Clock" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_V1 = elmt_compartment.elmt_V1;
        Params.elmt_V2 = elmt_compartment.elmt_V2;
        Reacs.elmt_K1 = Params.elmt_K1;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_K8 = Params.elmt_K8;
        Reacs.elmt_K6 = Params.elmt_K6;
        Reacs.elmt_K4 = Params.elmt_K4;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_Y2 = elmt_compartment.elmt_Y2;
        Reacs.elmt_Y1 = elmt_compartment.elmt_Y1;
        Reacs.elmt_Kc = Params.elmt_Kc;
        Reacs.elmt_K = Params.elmt_K;
        Reacs.elmt_L = Params.elmt_L;
        Reacs.elmt_vc = Params.elmt_vc;
        Reacs.elmt_F = Params.elmt_F;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_v_1 = Params.elmt_v_1;
        Reacs.elmt_v_8 = Params.elmt_v_8;
        Reacs.elmt_V1 = elmt_compartment.elmt_V1;
        Reacs.elmt_v_6 = Params.elmt_v_6;
        Reacs.elmt_V2 = elmt_compartment.elmt_V2;
        Reacs.elmt_X1 = elmt_compartment.elmt_X1;
        Reacs.elmt_v_4 = Params.elmt_v_4;
        Reacs.elmt_X2 = elmt_compartment.elmt_X2;
        Reacs.elmt_Z1 = elmt_compartment.elmt_Z1;
        Reacs.elmt_v_2 = Params.elmt_v_2;
        Reacs.elmt_Z2 = elmt_compartment.elmt_Z2;
        elmt_compartment.elmt_R16 = Reacs.elmt_R16;
        elmt_compartment.elmt_R17 = Reacs.elmt_R17;
        elmt_compartment.elmt_R14 = Reacs.elmt_R14;
        elmt_compartment.elmt_R15 = Reacs.elmt_R15;
        elmt_compartment.elmt_R12 = Reacs.elmt_R12;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_R13 = Reacs.elmt_R13;
        elmt_compartment.elmt_R10 = Reacs.elmt_R10;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_R11 = Reacs.elmt_R11;
        elmt_compartment.elmt_R18 = Reacs.elmt_R18;
        elmt_compartment.elmt_R19 = Reacs.elmt_R19;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_R20 = Reacs.elmt_R20;
        elmt_compartment.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_R9 = Reacs.elmt_R9;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;

end Locke2008_Circadian_Clock;
