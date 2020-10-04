within BIOMD123;
model Fisher2006_NFAT_Activation "Fisher2006_NFAT_Activation" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_nucleus elmt_nucleus;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Reacs.elmt_nucleus = elmt_nucleus.elmt_nucleus;
        Reacs.elmt_Ca_Nuc = elmt_nucleus.elmt_Ca_Nuc;
        Reacs.elmt_Ca_Cyt = elmt_cytosol.elmt_Ca_Cyt;
        Reacs.elmt_NFAT_Pi_Act_C_Cyt = elmt_cytosol.elmt_NFAT_Pi_Act_C_Cyt;
        Reacs.elmt_NFAT_Pi_Act_C_Nuc = elmt_nucleus.elmt_NFAT_Pi_Act_C_Nuc;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_k16 = Params.elmt_k16;
        Reacs.elmt_k15 = Params.elmt_k15;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_NFAT_Pi_Nuc = elmt_nucleus.elmt_NFAT_Pi_Nuc;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_NFAT_Pi_Cyt = elmt_cytosol.elmt_NFAT_Pi_Cyt;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_k19 = Params.elmt_k19;
        Reacs.elmt_k18 = Params.elmt_k18;
        Reacs.elmt_k17 = Params.elmt_k17;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_Act_C_Cyt = elmt_cytosol.elmt_Act_C_Cyt;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_NFAT_Cyt = elmt_cytosol.elmt_NFAT_Cyt;
        Reacs.elmt_Act_C_Nuc = elmt_nucleus.elmt_Act_C_Nuc;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_NFAT_Nuc = elmt_nucleus.elmt_NFAT_Nuc;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_Inact_C_Cyt = elmt_cytosol.elmt_Inact_C_Cyt;
        Reacs.elmt_Inact_C_Nuc = elmt_nucleus.elmt_Inact_C_Nuc;
        Reacs.elmt_NFAT_Act_C_Cyt = elmt_cytosol.elmt_NFAT_Act_C_Cyt;
        Reacs.elmt_NFAT_Act_C_Nuc = elmt_nucleus.elmt_NFAT_Act_C_Nuc;
        Reacs.elmt_k22 = Params.elmt_k22;
        Reacs.elmt_k21 = Params.elmt_k21;
        Reacs.elmt_k20 = Params.elmt_k20;
        elmt_nucleus.elmt_R16 = Reacs.elmt_R16;
        elmt_nucleus.elmt_R17 = Reacs.elmt_R17;
        elmt_nucleus.elmt_R14 = Reacs.elmt_R14;
        elmt_nucleus.elmt_R15 = Reacs.elmt_R15;
        elmt_nucleus.elmt_product12 = Reacs.elmt_product12;
        elmt_nucleus.elmt_R10 = Reacs.elmt_R10;
        elmt_nucleus.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_nucleus.elmt_product24 = Reacs.elmt_product24;
        elmt_nucleus.elmt_product29 = Reacs.elmt_product29;
        elmt_nucleus.elmt_product41 = Reacs.elmt_product41;
        elmt_nucleus.elmt_R7 = Reacs.elmt_R7;
        elmt_nucleus.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_nucleus.elmt_R5 = Reacs.elmt_R5;
        elmt_nucleus.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_nucleus.elmt_product6 = Reacs.elmt_product6;
        elmt_nucleus.elmt_R6 = Reacs.elmt_R6;
        elmt_nucleus.elmt_R3 = Reacs.elmt_R3;
        elmt_nucleus.elmt_R4 = Reacs.elmt_R4;
        elmt_nucleus.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_nucleus.elmt_product43 = Reacs.elmt_product43;
        elmt_nucleus.elmt_R1 = Reacs.elmt_R1;
        elmt_nucleus.elmt_R2 = Reacs.elmt_R2;
        elmt_nucleus.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_nucleus.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_nucleus.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_nucleus.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_nucleus.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_nucleus.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_nucleus.elmt_product3 = Reacs.elmt_product3;
        elmt_nucleus.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_nucleus.elmt_product2 = Reacs.elmt_product2;
        elmt_nucleus.elmt_product15 = Reacs.elmt_product15;
        elmt_nucleus.elmt_product14 = Reacs.elmt_product14;
        elmt_nucleus.elmt_product39 = Reacs.elmt_product39;
        elmt_cytosol.elmt_R16 = Reacs.elmt_R16;
        elmt_cytosol.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cytosol.elmt_R17 = Reacs.elmt_R17;
        elmt_cytosol.elmt_R15 = Reacs.elmt_R15;
        elmt_cytosol.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cytosol.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cytosol.elmt_R12 = Reacs.elmt_R12;
        elmt_cytosol.elmt_R13 = Reacs.elmt_R13;
        elmt_cytosol.elmt_product33 = Reacs.elmt_product33;
        elmt_cytosol.elmt_product32 = Reacs.elmt_product32;
        elmt_cytosol.elmt_product10 = Reacs.elmt_product10;
        elmt_cytosol.elmt_R10 = Reacs.elmt_R10;
        elmt_cytosol.elmt_R11 = Reacs.elmt_R11;
        elmt_cytosol.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_cytosol.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cytosol.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_cytosol.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cytosol.elmt_product27 = Reacs.elmt_product27;
        elmt_cytosol.elmt_product26 = Reacs.elmt_product26;
        elmt_cytosol.elmt_R7 = Reacs.elmt_R7;
        elmt_cytosol.elmt_R8 = Reacs.elmt_R8;
        elmt_cytosol.elmt_product8 = Reacs.elmt_product8;
        elmt_cytosol.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cytosol.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_cytosol.elmt_R3 = Reacs.elmt_R3;
        elmt_cytosol.elmt_R4 = Reacs.elmt_R4;
        elmt_cytosol.elmt_product22 = Reacs.elmt_product22;
        elmt_cytosol.elmt_product21 = Reacs.elmt_product21;
        elmt_cytosol.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_cytosol.elmt_R9 = Reacs.elmt_R9;
        elmt_cytosol.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_cytosol.elmt_product36 = Reacs.elmt_product36;
        elmt_cytosol.elmt_product19 = Reacs.elmt_product19;
        elmt_cytosol.elmt_product17 = Reacs.elmt_product17;

end Fisher2006_NFAT_Activation;
