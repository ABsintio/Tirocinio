within BIOMD139;
model Hoffmann2002_KnockOut_IkBNFkB_Signaling "Hoffmann2002_KnockOut_IkBNFkB_Signaling" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_nucleus elmt_nucleus;
    Class_elmt_cytoplasm elmt_cytoplasm;
    Class_elmt_event_0000001 elmt_event_0000001;

    equation
        Params.elmt_IKK_IkBalpha = elmt_cytoplasm.elmt_IKK_IkBalpha;
        Params.elmt_IkBbeta_nuc_NFkB_nuc = elmt_nucleus.elmt_IkBbeta_nuc_NFkB_nuc;
        Params.elmt_IkBalpha = elmt_cytoplasm.elmt_IkBalpha;
        Params.elmt_IkBbeta_NFkB = elmt_cytoplasm.elmt_IkBbeta_NFkB;
        Params.elmt_IkBeps_NFkB = elmt_cytoplasm.elmt_IkBeps_NFkB;
        Params.elmt_IkBbeta = elmt_cytoplasm.elmt_IkBbeta;
        Params.elmt_IKK_IkBeps = elmt_cytoplasm.elmt_IKK_IkBeps;
        Params.elmt_IKK_IkBalpha_NFkB = elmt_cytoplasm.elmt_IKK_IkBalpha_NFkB;
        Params.elmt_IKK_IkBbeta = elmt_cytoplasm.elmt_IKK_IkBbeta;
        Params.elmt_NFkB_nuc = elmt_nucleus.elmt_NFkB_nuc;
        Params.elmt_IKK_IkBeps_NFkB = elmt_cytoplasm.elmt_IKK_IkBeps_NFkB;
        Params.elmt_IkBalpha_NFkB = elmt_cytoplasm.elmt_IkBalpha_NFkB;
        Params.elmt_IKK_IkBbeta_NFkB = elmt_cytoplasm.elmt_IKK_IkBbeta_NFkB;
        Params.elmt_IkBeps = elmt_cytoplasm.elmt_IkBeps;
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Reacs.elmt_IKK_IkBalpha = elmt_cytoplasm.elmt_IKK_IkBalpha;
        Reacs.elmt_nucleus = elmt_nucleus.elmt_nucleus;
        Reacs.elmt_r5 = Params.elmt_r5;
        Reacs.elmt_tp2 = Params.elmt_tp2;
        Reacs.elmt_r6 = Params.elmt_r6;
        Reacs.elmt_tp1 = Params.elmt_tp1;
        Reacs.elmt_r3 = Params.elmt_r3;
        Reacs.elmt_r4 = Params.elmt_r4;
        Reacs.elmt_IkBalpha_nuc = elmt_nucleus.elmt_IkBalpha_nuc;
        Reacs.elmt_r1 = Params.elmt_r1;
        Reacs.elmt_r2 = Params.elmt_r2;
        Reacs.elmt_IkBbeta = elmt_cytoplasm.elmt_IkBbeta;
        Reacs.elmt_IKK_IkBeps = elmt_cytoplasm.elmt_IKK_IkBeps;
        Reacs.elmt_a6 = Params.elmt_a6;
        Reacs.elmt_a7 = Params.elmt_a7;
        Reacs.elmt_a4 = Params.elmt_a4;
        Reacs.elmt_a5 = Params.elmt_a5;
        Reacs.elmt_IkBeps_transcript = elmt_nucleus.elmt_IkBeps_transcript;
        Reacs.elmt_a2 = Params.elmt_a2;
        Reacs.elmt_IKK_IkBbeta = elmt_cytoplasm.elmt_IKK_IkBbeta;
        Reacs.elmt_a3 = Params.elmt_a3;
        Reacs.elmt_tr2b = Params.elmt_tr2b;
        Reacs.elmt_a1 = Params.elmt_a1;
        Reacs.elmt_tr2a = Params.elmt_tr2a;
        Reacs.elmt_NFkB_nuc = elmt_nucleus.elmt_NFkB_nuc;
        Reacs.elmt_IkBalpha_transcript = elmt_nucleus.elmt_IkBalpha_transcript;
        Reacs.elmt_deg1 = Params.elmt_deg1;
        Reacs.elmt_deg4 = Params.elmt_deg4;
        Reacs.elmt_a8 = Params.elmt_a8;
        Reacs.elmt_a9 = Params.elmt_a9;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_IkBeps_nuc = elmt_nucleus.elmt_IkBeps_nuc;
        Reacs.elmt_IkBbeta_nuc_NFkB_nuc = elmt_nucleus.elmt_IkBbeta_nuc_NFkB_nuc;
        Reacs.elmt_IkBbeta_transcript = elmt_nucleus.elmt_IkBbeta_transcript;
        Reacs.elmt_IkBalpha_nuc_NFkB_nuc = elmt_nucleus.elmt_IkBalpha_nuc_NFkB_nuc;
        Reacs.elmt_IkBeps_NFkB = elmt_cytoplasm.elmt_IkBeps_NFkB;
        Reacs.elmt_IkBbeta_NFkB = elmt_cytoplasm.elmt_IkBbeta_NFkB;
        Reacs.elmt_IKK_IkBalpha_NFkB = elmt_cytoplasm.elmt_IKK_IkBalpha_NFkB;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k2_eps = Params.elmt_k2_eps;
        Reacs.elmt_IkBalpha_NFkB = elmt_cytoplasm.elmt_IkBalpha_NFkB;
        Reacs.elmt_IKK = elmt_cytoplasm.elmt_IKK;
        Reacs.elmt_tr3 = Params.elmt_tr3;
        Reacs.elmt_tr2 = Params.elmt_tr2;
        Reacs.elmt_tr1 = Params.elmt_tr1;
        Reacs.elmt_d1 = Params.elmt_d1;
        Reacs.elmt_d2 = Params.elmt_d2;
        Reacs.elmt_IkBeps_nuc_NFkB_nuc = elmt_nucleus.elmt_IkBeps_nuc_NFkB_nuc;
        Reacs.elmt_NFkB = elmt_cytoplasm.elmt_NFkB;
        Reacs.elmt_IKK_IkBeps_NFkB = elmt_cytoplasm.elmt_IKK_IkBeps_NFkB;
        Reacs.elmt_IkBeps = elmt_cytoplasm.elmt_IkBeps;
        Reacs.elmt_IkBbeta_nuc = elmt_nucleus.elmt_IkBbeta_nuc;
        Reacs.elmt_flag_for_after_trigger = Params.elmt_flag_for_after_trigger;
        Reacs.elmt_IkBalpha = elmt_cytoplasm.elmt_IkBalpha;
        Reacs.elmt_fr_after_trigger = Params.elmt_fr_after_trigger;
        Reacs.elmt_tr2e = Params.elmt_tr2e;
        Reacs.elmt_d5 = Params.elmt_d5;
        Reacs.elmt_d6 = Params.elmt_d6;
        Reacs.elmt_cytoplasm = elmt_cytoplasm.elmt_cytoplasm;
        Reacs.elmt_d3 = Params.elmt_d3;
        Reacs.elmt_d4 = Params.elmt_d4;
        Reacs.elmt_k02 = Params.elmt_k02;
        Reacs.elmt_k01 = Params.elmt_k01;
        Reacs.elmt_IKK_IkBbeta_NFkB = elmt_cytoplasm.elmt_IKK_IkBbeta_NFkB;
        elmt_nucleus.elmt_v23 = Reacs.elmt_v23;
        elmt_nucleus.elmt_v22 = Reacs.elmt_v22;
        elmt_nucleus.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_nucleus.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_nucleus.elmt_product71 = Reacs.elmt_product71;
        elmt_nucleus.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_nucleus.elmt_v21 = Reacs.elmt_v21;
        elmt_nucleus.elmt_v20 = Reacs.elmt_v20;
        elmt_nucleus.elmt_product34 = Reacs.elmt_product34;
        elmt_nucleus.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_nucleus.elmt_v41 = Reacs.elmt_v41;
        elmt_nucleus.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_nucleus.elmt_v27 = Reacs.elmt_v27;
        elmt_nucleus.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_nucleus.elmt_product49 = Reacs.elmt_product49;
        elmt_nucleus.elmt_product47 = Reacs.elmt_product47;
        elmt_nucleus.elmt_v35 = Reacs.elmt_v35;
        elmt_nucleus.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_nucleus.elmt_v13 = Reacs.elmt_v13;
        elmt_nucleus.elmt_product40 = Reacs.elmt_product40;
        elmt_nucleus.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_nucleus.elmt_product45 = Reacs.elmt_product45;
        elmt_nucleus.elmt_v31 = Reacs.elmt_v31;
        elmt_nucleus.elmt_product44 = Reacs.elmt_product44;
        elmt_nucleus.elmt_product43 = Reacs.elmt_product43;
        elmt_nucleus.elmt_product64 = Reacs.elmt_product64;
        elmt_nucleus.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_nucleus.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_nucleus.elmt_v19 = Reacs.elmt_v19;
        elmt_nucleus.elmt_v18 = Reacs.elmt_v18;
        elmt_nucleus.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_nucleus.elmt_v39 = Reacs.elmt_v39;
        elmt_nucleus.elmt_v17 = Reacs.elmt_v17;
        elmt_nucleus.elmt_v16 = Reacs.elmt_v16;
        elmt_nucleus.elmt_v15 = Reacs.elmt_v15;
        elmt_nucleus.elmt_v37 = Reacs.elmt_v37;
        elmt_nucleus.elmt_v14 = Reacs.elmt_v14;
        elmt_nucleus.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_nucleus.elmt_product37 = Reacs.elmt_product37;
        elmt_nucleus.elmt_product57 = Reacs.elmt_product57;
        elmt_cytoplasm.elmt_product74 = Reacs.elmt_product74;
        elmt_cytoplasm.elmt_product76 = Reacs.elmt_product76;
        elmt_cytoplasm.elmt_product68 = Reacs.elmt_product68;
        elmt_cytoplasm.elmt_product84 = Reacs.elmt_product84;
        elmt_cytoplasm.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_cytoplasm.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cytoplasm.elmt_product88 = Reacs.elmt_product88;
        elmt_cytoplasm.elmt_product86 = Reacs.elmt_product86;
        elmt_cytoplasm.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_cytoplasm.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_cytoplasm.elmt_product81 = Reacs.elmt_product81;
        elmt_cytoplasm.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_cytoplasm.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_cytoplasm.elmt_product79 = Reacs.elmt_product79;
        elmt_cytoplasm.elmt_product11 = Reacs.elmt_product11;
        elmt_cytoplasm.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_cytoplasm.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_cytoplasm.elmt_product92 = Reacs.elmt_product92;
        elmt_cytoplasm.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cytoplasm.elmt_product90 = Reacs.elmt_product90;
        elmt_cytoplasm.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cytoplasm.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cytoplasm.elmt_v13 = Reacs.elmt_v13;
        elmt_cytoplasm.elmt_product8 = Reacs.elmt_product8;
        elmt_cytoplasm.elmt_v12 = Reacs.elmt_v12;
        elmt_cytoplasm.elmt_v11 = Reacs.elmt_v11;
        elmt_cytoplasm.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_cytoplasm.elmt_v10 = Reacs.elmt_v10;
        elmt_cytoplasm.elmt_product23 = Reacs.elmt_product23;
        elmt_cytoplasm.elmt_product20 = Reacs.elmt_product20;
        elmt_cytoplasm.elmt_product5 = Reacs.elmt_product5;
        elmt_cytoplasm.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_cytoplasm.elmt_product2 = Reacs.elmt_product2;
        elmt_cytoplasm.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cytoplasm.elmt_product14 = Reacs.elmt_product14;
        elmt_cytoplasm.elmt_product13 = Reacs.elmt_product13;
        elmt_cytoplasm.elmt_product19 = Reacs.elmt_product19;
        elmt_cytoplasm.elmt_product17 = Reacs.elmt_product17;
        elmt_cytoplasm.elmt_v24 = Reacs.elmt_v24;
        elmt_cytoplasm.elmt_reactant83 = Reacs.elmt_reactant83;
        elmt_cytoplasm.elmt_product30 = Reacs.elmt_product30;
        elmt_cytoplasm.elmt_v9 = Reacs.elmt_v9;
        elmt_cytoplasm.elmt_v7 = Reacs.elmt_v7;
        elmt_cytoplasm.elmt_v8 = Reacs.elmt_v8;
        elmt_cytoplasm.elmt_v5 = Reacs.elmt_v5;
        elmt_cytoplasm.elmt_product32 = Reacs.elmt_product32;
        elmt_cytoplasm.elmt_v6 = Reacs.elmt_v6;
        elmt_cytoplasm.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_cytoplasm.elmt_v29 = Reacs.elmt_v29;
        elmt_cytoplasm.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_cytoplasm.elmt_v28 = Reacs.elmt_v28;
        elmt_cytoplasm.elmt_v27 = Reacs.elmt_v27;
        elmt_cytoplasm.elmt_v26 = Reacs.elmt_v26;
        elmt_cytoplasm.elmt_reactant89 = Reacs.elmt_reactant89;
        elmt_cytoplasm.elmt_v25 = Reacs.elmt_v25;
        elmt_cytoplasm.elmt_v3 = Reacs.elmt_v3;
        elmt_cytoplasm.elmt_v4 = Reacs.elmt_v4;
        elmt_cytoplasm.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cytoplasm.elmt_product26 = Reacs.elmt_product26;
        elmt_cytoplasm.elmt_v1 = Reacs.elmt_v1;
        elmt_cytoplasm.elmt_product25 = Reacs.elmt_product25;
        elmt_cytoplasm.elmt_v2 = Reacs.elmt_v2;
        elmt_cytoplasm.elmt_product28 = Reacs.elmt_product28;
        elmt_cytoplasm.elmt_v35 = Reacs.elmt_v35;
        elmt_cytoplasm.elmt_v34 = Reacs.elmt_v34;
        elmt_cytoplasm.elmt_v33 = Reacs.elmt_v33;
        elmt_cytoplasm.elmt_v32 = Reacs.elmt_v32;
        elmt_cytoplasm.elmt_v31 = Reacs.elmt_v31;
        elmt_cytoplasm.elmt_v30 = Reacs.elmt_v30;
        elmt_cytoplasm.elmt_reactant91 = Reacs.elmt_reactant91;
        elmt_cytoplasm.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_cytoplasm.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cytoplasm.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cytoplasm.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cytoplasm.elmt_v39 = Reacs.elmt_v39;
        elmt_cytoplasm.elmt_v38 = Reacs.elmt_v38;
        elmt_cytoplasm.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cytoplasm.elmt_v37 = Reacs.elmt_v37;
        elmt_cytoplasm.elmt_v36 = Reacs.elmt_v36;
        elmt_cytoplasm.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_cytoplasm.elmt_v45 = Reacs.elmt_v45;
        elmt_cytoplasm.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_cytoplasm.elmt_v44 = Reacs.elmt_v44;
        elmt_cytoplasm.elmt_v43 = Reacs.elmt_v43;
        elmt_cytoplasm.elmt_v42 = Reacs.elmt_v42;
        elmt_cytoplasm.elmt_v41 = Reacs.elmt_v41;
        elmt_cytoplasm.elmt_product54 = Reacs.elmt_product54;
        elmt_cytoplasm.elmt_v40 = Reacs.elmt_v40;
        elmt_cytoplasm.elmt_product53 = Reacs.elmt_product53;
        elmt_cytoplasm.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_cytoplasm.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_cytoplasm.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_cytoplasm.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_cytoplasm.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cytoplasm.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_cytoplasm.elmt_product61 = Reacs.elmt_product61;
        elmt_cytoplasm.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cytoplasm.elmt_product60 = Reacs.elmt_product60;
        elmt_cytoplasm.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cytoplasm.elmt_product67 = Reacs.elmt_product67;
        elmt_cytoplasm.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cytoplasm.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_cytoplasm.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cytoplasm.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_cytoplasm.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_cytoplasm.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cytoplasm.elmt_event_0000001 = elmt_event_0000001.trigger;
        elmt_event_0000001.elmt_trigger_value = Params.elmt_trigger_value;

        Params.assign_elmt_flag_for_after_trigger = elmt_event_0000001.value_elmt_flag_for_after_trigger;
        Params.assign_elmt_trigger_value = elmt_event_0000001.value_elmt_trigger_value;
        elmt_cytoplasm.assign_elmt_IKK = elmt_event_0000001.value_elmt_IKK;
end Hoffmann2002_KnockOut_IkBNFkB_Signaling;
