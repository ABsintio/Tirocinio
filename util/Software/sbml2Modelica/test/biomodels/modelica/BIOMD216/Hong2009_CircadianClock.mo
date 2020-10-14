within BIOMD216;
model Hong2009_CircadianClock "Hong2009_CircadianClock" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_system elmt_system;

    equation
        Reacs.elmt_Dex = Params.elmt_Dex;
        Reacs.elmt_Jp = Params.elmt_Jp;
        Reacs.elmt_M = elmt_system.elmt_M;
        Reacs.elmt_kcp2d = Params.elmt_kcp2d;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_J = Params.elmt_J;
        Reacs.elmt_kms = Params.elmt_kms;
        Reacs.elmt_CP = elmt_system.elmt_CP;
        Reacs.elmt_kcps = Params.elmt_kcps;
        Reacs.elmt_kica = Params.elmt_kica;
        Reacs.elmt_chk2c = Params.elmt_chk2c;
        Reacs.elmt_system = elmt_system.elmt_system;
        Reacs.elmt_ka = Params.elmt_ka;
        Reacs.elmt_CP2 = elmt_system.elmt_CP2;
        Reacs.elmt_TF = elmt_system.elmt_TF;
        Reacs.elmt_kicd = Params.elmt_kicd;
        Reacs.elmt_kmd = Params.elmt_kmd;
        Reacs.elmt_kcpd = Params.elmt_kcpd;
        Reacs.elmt_kp2 = Params.elmt_kp2;
        Reacs.elmt_kd = Params.elmt_kd;
        Reacs.elmt_kp1 = Params.elmt_kp1;
        Reacs.elmt_chk2 = Params.elmt_chk2;
        Reacs.elmt_IC = elmt_system.elmt_IC;
        elmt_system.elmt_r7 = Reacs.elmt_r7;
        elmt_system.elmt_r8 = Reacs.elmt_r8;
        elmt_system.elmt_r5 = Reacs.elmt_r5;
        elmt_system.elmt_r6 = Reacs.elmt_r6;
        elmt_system.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_system.elmt_r3 = Reacs.elmt_r3;
        elmt_system.elmt_product12 = Reacs.elmt_product12;
        elmt_system.elmt_r4 = Reacs.elmt_r4;
        elmt_system.elmt_r1 = Reacs.elmt_r1;
        elmt_system.elmt_r2 = Reacs.elmt_r2;
        elmt_system.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_system.elmt_r9 = Reacs.elmt_r9;
        elmt_system.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_system.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_system.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_system.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_system.elmt_product25 = Reacs.elmt_product25;
        elmt_system.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_system.elmt_r17 = Reacs.elmt_r17;
        elmt_system.elmt_r16 = Reacs.elmt_r16;
        elmt_system.elmt_product8 = Reacs.elmt_product8;
        elmt_system.elmt_r15 = Reacs.elmt_r15;
        elmt_system.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_system.elmt_product6 = Reacs.elmt_product6;
        elmt_system.elmt_r14 = Reacs.elmt_r14;
        elmt_system.elmt_r13 = Reacs.elmt_r13;
        elmt_system.elmt_product23 = Reacs.elmt_product23;
        elmt_system.elmt_r12 = Reacs.elmt_r12;
        elmt_system.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_system.elmt_r11 = Reacs.elmt_r11;
        elmt_system.elmt_product21 = Reacs.elmt_product21;
        elmt_system.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_system.elmt_r10 = Reacs.elmt_r10;
        elmt_system.elmt_product1 = Reacs.elmt_product1;
        elmt_system.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_system.elmt_product0 = Reacs.elmt_product0;
        elmt_system.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_system.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_system.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_system.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_system.elmt_product3 = Reacs.elmt_product3;
        elmt_system.elmt_product13 = Reacs.elmt_product13;
        elmt_system.elmt_product17 = Reacs.elmt_product17;

end Hong2009_CircadianClock;
