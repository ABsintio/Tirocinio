within BIOMD243;
model Neumann2010_CD95Stimulation_NFkB_Apoptosis "Neumann2010_CD95Stimulation_NFkB_Apoptosis" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Reacs.elmt_FL = elmt_default.elmt_FL;
        Reacs.elmt_FS = elmt_default.elmt_FS;
        Reacs.elmt_p43_FLIP_IKK_star = elmt_default.elmt_p43_FLIP_IKK_star;
        Reacs.elmt_L_RF = elmt_default.elmt_L_RF;
        Reacs.elmt_L_RF_FL = elmt_default.elmt_L_RF_FL;
        Reacs.elmt_C3_star = elmt_default.elmt_C3_star;
        Reacs.elmt_RF = elmt_default.elmt_RF;
        Reacs.elmt_p43_FLIP = elmt_default.elmt_p43_FLIP;
        Reacs.elmt_L_RF_FS = elmt_default.elmt_L_RF_FS;
        Reacs.elmt_k16 = Params.elmt_k16;
        Reacs.elmt_k15 = Params.elmt_k15;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_NF_kB_star = elmt_default.elmt_NF_kB_star;
        Reacs.elmt_L_RF_C8 = elmt_default.elmt_L_RF_C8;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_C8_star = elmt_default.elmt_C8_star;
        Reacs.elmt_NF_kB_IkB = elmt_default.elmt_NF_kB_IkB;
        Reacs.elmt_L = elmt_default.elmt_L;
        Reacs.elmt_k17 = Params.elmt_k17;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_C8 = elmt_default.elmt_C8;
        Reacs.elmt_NF_kB_IkB_P = elmt_default.elmt_NF_kB_IkB_P;
        Reacs.elmt_p43_p41 = elmt_default.elmt_p43_p41;
        Reacs.elmt_C3 = elmt_default.elmt_C3;
        Reacs.elmt_IKK = elmt_default.elmt_IKK;
        elmt_default.elmt_product30 = Reacs.elmt_product30;
        elmt_default.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_default.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_default.elmt_product33 = Reacs.elmt_product33;
        elmt_default.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_default.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_default.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_default.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_default.elmt_product27 = Reacs.elmt_product27;
        elmt_default.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_default.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_default.elmt_product24 = Reacs.elmt_product24;
        elmt_default.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_default.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_default.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_default.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_default.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_default.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_default.elmt_product45 = Reacs.elmt_product45;
        elmt_default.elmt_product42 = Reacs.elmt_product42;
        elmt_default.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_default.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_default.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_default.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_default.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_default.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_default.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_default.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_default.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_default.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_default.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_default.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_default.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_default.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_default.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_default.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_default.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_default.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_default.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_default.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_default.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_default.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_default.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_default.elmt_product36 = Reacs.elmt_product36;
        elmt_default.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_default.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_default.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_default.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_default.elmt_product39 = Reacs.elmt_product39;
        elmt_default.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_default.elmt_product50 = Reacs.elmt_product50;
        elmt_default.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_default.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_default.elmt_product55 = Reacs.elmt_product55;
        elmt_default.elmt_product11 = Reacs.elmt_product11;
        elmt_default.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_default.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_default.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_default.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_default.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_default.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_default.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_default.elmt_product49 = Reacs.elmt_product49;
        elmt_default.elmt_product46 = Reacs.elmt_product46;
        elmt_default.elmt_product8 = Reacs.elmt_product8;
        elmt_default.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_default.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_default.elmt_product61 = Reacs.elmt_product61;
        elmt_default.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_default.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_default.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_default.elmt_product21 = Reacs.elmt_product21;
        elmt_default.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_default.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_default.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_default.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_default.elmt_product5 = Reacs.elmt_product5;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_default.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_default.elmt_product2 = Reacs.elmt_product2;
        elmt_default.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_default.elmt_product59 = Reacs.elmt_product59;
        elmt_default.elmt_product15 = Reacs.elmt_product15;
        elmt_default.elmt_product58 = Reacs.elmt_product58;
        elmt_default.elmt_product14 = Reacs.elmt_product14;
        elmt_default.elmt_product18 = Reacs.elmt_product18;

end Neumann2010_CD95Stimulation_NFkB_Apoptosis;
