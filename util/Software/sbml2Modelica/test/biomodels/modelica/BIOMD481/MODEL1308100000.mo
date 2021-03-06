within BIOMD481;
model MODEL1308100000 "Stötzel2012 - Bovine estrous cycle, synchronization with prostaglandin F2α" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Params.elmt_species_1 = elmt_default.elmt_species_1;
        Params.elmt_PGF = elmt_default.elmt_PGF;
        Reacs.elmt_FSH_Pit = elmt_default.elmt_FSH_Pit;
        Reacs.elmt_E2 = elmt_default.elmt_E2;
        Reacs.elmt_par48 = Params.elmt_par48;
        Reacs.elmt_par47 = Params.elmt_par47;
        Reacs.elmt_par46 = Params.elmt_par46;
        Reacs.elmt_par89 = Params.elmt_par89;
        Reacs.elmt_par45 = Params.elmt_par45;
        Reacs.elmt_GnRH_Hyp = elmt_default.elmt_GnRH_Hyp;
        Reacs.elmt_par87 = Params.elmt_par87;
        Reacs.elmt_par43 = Params.elmt_par43;
        Reacs.elmt_par86 = Params.elmt_par86;
        Reacs.elmt_par42 = Params.elmt_par42;
        Reacs.elmt_par41 = Params.elmt_par41;
        Reacs.elmt_Inh = elmt_default.elmt_Inh;
        Reacs.elmt_par82 = Params.elmt_par82;
        Reacs.elmt_par81 = Params.elmt_par81;
        Reacs.elmt_par7 = Params.elmt_par7;
        Reacs.elmt_par6 = Params.elmt_par6;
        Reacs.elmt_par5 = Params.elmt_par5;
        Reacs.elmt_par4 = Params.elmt_par4;
        Reacs.elmt_par3 = Params.elmt_par3;
        Reacs.elmt_par2 = Params.elmt_par2;
        Reacs.elmt_Enz = elmt_default.elmt_Enz;
        Reacs.elmt_par1 = Params.elmt_par1;
        Reacs.elmt_IOF = elmt_default.elmt_IOF;
        Reacs.elmt_par38 = Params.elmt_par38;
        Reacs.elmt_par37 = Params.elmt_par37;
        Reacs.elmt_LH_Pit = elmt_default.elmt_LH_Pit;
        Reacs.elmt_par36 = Params.elmt_par36;
        Reacs.elmt_par35 = Params.elmt_par35;
        Reacs.elmt_par9 = Params.elmt_par9;
        Reacs.elmt_par34 = Params.elmt_par34;
        Reacs.elmt_par77 = Params.elmt_par77;
        Reacs.elmt_par8 = Params.elmt_par8;
        Reacs.elmt_par33 = Params.elmt_par33;
        Reacs.elmt_par32 = Params.elmt_par32;
        Reacs.elmt_par76 = Params.elmt_par76;
        Reacs.elmt_par31 = Params.elmt_par31;
        Reacs.elmt_par30 = Params.elmt_par30;
        Reacs.elmt_par72 = Params.elmt_par72;
        Reacs.elmt_par71 = Params.elmt_par71;
        Reacs.elmt_FSH_Bld = elmt_default.elmt_FSH_Bld;
        Reacs.elmt_par29 = Params.elmt_par29;
        Reacs.elmt_par28 = Params.elmt_par28;
        Reacs.elmt_par27 = Params.elmt_par27;
        Reacs.elmt_par26 = Params.elmt_par26;
        Reacs.elmt_par25 = Params.elmt_par25;
        Reacs.elmt_par24 = Params.elmt_par24;
        Reacs.elmt_par23 = Params.elmt_par23;
        Reacs.elmt_par66 = Params.elmt_par66;
        Reacs.elmt_par22 = Params.elmt_par22;
        Reacs.elmt_par65 = Params.elmt_par65;
        Reacs.elmt_par21 = Params.elmt_par21;
        Reacs.elmt_par64 = Params.elmt_par64;
        Reacs.elmt_par63 = Params.elmt_par63;
        Reacs.elmt_par62 = Params.elmt_par62;
        Reacs.elmt_OT = elmt_default.elmt_OT;
        Reacs.elmt_P4 = elmt_default.elmt_P4;
        Reacs.elmt_GnRH_Pit = elmt_default.elmt_GnRH_Pit;
        Reacs.elmt_par59 = Params.elmt_par59;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_par58 = Params.elmt_par58;
        Reacs.elmt_LH_Bld = elmt_default.elmt_LH_Bld;
        Reacs.elmt_CL = elmt_default.elmt_CL;
        Reacs.elmt_par57 = Params.elmt_par57;
        Reacs.elmt_par56 = Params.elmt_par56;
        Reacs.elmt_Foll = elmt_default.elmt_Foll;
        Reacs.elmt_par10 = Params.elmt_par10;
        Reacs.elmt_par98 = Params.elmt_par98;
        Reacs.elmt_par97 = Params.elmt_par97;
        Reacs.elmt_par96 = Params.elmt_par96;
        Reacs.elmt_par95 = Params.elmt_par95;
        Reacs.elmt_par94 = Params.elmt_par94;
        Reacs.elmt_par92 = Params.elmt_par92;
        Reacs.elmt_par91 = Params.elmt_par91;
        Reacs.elmt_PGF = elmt_default.elmt_PGF;
        elmt_default.elmt_SpeciesReference = Reacs.elmt_SpeciesReference;
        elmt_default.elmt_SpeciesReference_46 = Reacs.elmt_SpeciesReference_46;
        elmt_default.elmt_SpeciesReference_48 = Reacs.elmt_SpeciesReference_48;
        elmt_default.elmt_SpeciesReference_50 = Reacs.elmt_SpeciesReference_50;
        elmt_default.elmt_SpeciesReference_52 = Reacs.elmt_SpeciesReference_52;
        elmt_default.elmt_SpeciesReference_54 = Reacs.elmt_SpeciesReference_54;
        elmt_default.elmt_parameter_4 = Params.elmt_parameter_4;
        elmt_default.elmt_parameter_3 = Params.elmt_parameter_3;
        elmt_default.elmt_re26 = Reacs.elmt_re26;
        elmt_default.elmt_re27 = Reacs.elmt_re27;
        elmt_default.elmt_re28 = Reacs.elmt_re28;
        elmt_default.elmt_re3 = Reacs.elmt_re3;
        elmt_default.elmt_SpeciesReference_56 = Reacs.elmt_SpeciesReference_56;
        elmt_default.elmt_re2 = Reacs.elmt_re2;
        elmt_default.elmt_SpeciesReference_13 = Reacs.elmt_SpeciesReference_13;
        elmt_default.elmt_SpeciesReference_58 = Reacs.elmt_SpeciesReference_58;
        elmt_default.elmt_re1 = Reacs.elmt_re1;
        elmt_default.elmt_re20 = Reacs.elmt_re20;
        elmt_default.elmt_re21 = Reacs.elmt_re21;
        elmt_default.elmt_re22 = Reacs.elmt_re22;
        elmt_default.elmt_re23 = Reacs.elmt_re23;
        elmt_default.elmt_SpeciesReference_18 = Reacs.elmt_SpeciesReference_18;
        elmt_default.elmt_re24 = Reacs.elmt_re24;
        elmt_default.elmt_re25 = Reacs.elmt_re25;
        elmt_default.elmt_SpeciesReference_60 = Reacs.elmt_SpeciesReference_60;
        elmt_default.elmt_re9 = Reacs.elmt_re9;
        elmt_default.elmt_re8 = Reacs.elmt_re8;
        elmt_default.elmt_re7 = Reacs.elmt_re7;
        elmt_default.elmt_re6 = Reacs.elmt_re6;
        elmt_default.elmt_SpeciesReference_64 = Reacs.elmt_SpeciesReference_64;
        elmt_default.elmt_SpeciesReference_21 = Reacs.elmt_SpeciesReference_21;
        elmt_default.elmt_re5 = Reacs.elmt_re5;
        elmt_default.elmt_re4 = Reacs.elmt_re4;
        elmt_default.elmt_SpeciesReference_8 = Reacs.elmt_SpeciesReference_8;
        elmt_default.elmt_re15 = Reacs.elmt_re15;
        elmt_default.elmt_re16 = Reacs.elmt_re16;
        elmt_default.elmt_re17 = Reacs.elmt_re17;
        elmt_default.elmt_re18 = Reacs.elmt_re18;
        elmt_default.elmt_re19 = Reacs.elmt_re19;
        elmt_default.elmt_SpeciesReference_24 = Reacs.elmt_SpeciesReference_24;
        elmt_default.elmt_SpeciesReference_68 = Reacs.elmt_SpeciesReference_68;
        elmt_default.elmt_re10 = Reacs.elmt_re10;
        elmt_default.elmt_SpeciesReference_1 = Reacs.elmt_SpeciesReference_1;
        elmt_default.elmt_SpeciesReference_4 = Reacs.elmt_SpeciesReference_4;
        elmt_default.elmt_SpeciesReference_27 = Reacs.elmt_SpeciesReference_27;
        elmt_default.elmt_re11 = Reacs.elmt_re11;
        elmt_default.elmt_SpeciesReference_3 = Reacs.elmt_SpeciesReference_3;
        elmt_default.elmt_re12 = Reacs.elmt_re12;
        elmt_default.elmt_re13 = Reacs.elmt_re13;
        elmt_default.elmt_re14 = Reacs.elmt_re14;
        elmt_default.elmt_SpeciesReference_72 = Reacs.elmt_SpeciesReference_72;
        elmt_default.elmt_SpeciesReference_30 = Reacs.elmt_SpeciesReference_30;
        elmt_default.elmt_SpeciesReference_75 = Reacs.elmt_SpeciesReference_75;
        elmt_default.elmt_SpeciesReference_34 = Reacs.elmt_SpeciesReference_34;
        elmt_default.elmt_SpeciesReference_37 = Reacs.elmt_SpeciesReference_37;
        elmt_default.elmt_SpeciesReference_84 = Reacs.elmt_SpeciesReference_84;
        elmt_default.elmt_SpeciesReference_40 = Reacs.elmt_SpeciesReference_40;
        elmt_default.elmt_SpeciesReference_42 = Reacs.elmt_SpeciesReference_42;
        elmt_default.elmt_SpeciesReference_44 = Reacs.elmt_SpeciesReference_44;
        elmt_default.elmt_ModelValue_60 = Params.elmt_ModelValue_60;
        elmt_default.elmt_ModelValue_61 = Params.elmt_ModelValue_61;
        elmt_default.elmt_SpeciesReference_80 = Reacs.elmt_SpeciesReference_80;

end MODEL1308100000;
