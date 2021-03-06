within BIOMD200;
model Bray1995_chemotaxis_receptorlinkedcomplex "Bray1995_chemotaxis_receptorlinkedcomplex" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_SetYp = elmt_cell.elmt_SetYp;
        Params.elmt_Yp = elmt_cell.elmt_Yp;
        Reacs.elmt_TTWWAA = elmt_cell.elmt_TTWWAA;
        Reacs.elmt_WAA = elmt_cell.elmt_WAA;
        Reacs.elmt_TTW = elmt_cell.elmt_TTW;
        Reacs.elmt_TTWWAAp = elmt_cell.elmt_TTWWAAp;
        Reacs.elmt_WWAAp = elmt_cell.elmt_WWAAp;
        Reacs.elmt_AA = elmt_cell.elmt_AA;
        Reacs.elmt_TT = elmt_cell.elmt_TT;
        Reacs.elmt_TTWAA = elmt_cell.elmt_TTWAA;
        Reacs.elmt_Bp = elmt_cell.elmt_Bp;
        Reacs.elmt_WWAA = elmt_cell.elmt_WWAA;
        Reacs.elmt_TTAA = elmt_cell.elmt_TTAA;
        Reacs.elmt_TTWW = elmt_cell.elmt_TTWW;
        Reacs.elmt_B = elmt_cell.elmt_B;
        Reacs.elmt_TTAAp = elmt_cell.elmt_TTAAp;
        Reacs.elmt_WAAp = elmt_cell.elmt_WAAp;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_Y = elmt_cell.elmt_Y;
        Reacs.elmt_Z = elmt_cell.elmt_Z;
        Reacs.elmt_W = elmt_cell.elmt_W;
        Reacs.elmt_AAp = elmt_cell.elmt_AAp;
        Reacs.elmt_TTWAAp = elmt_cell.elmt_TTWAAp;
        Reacs.elmt_Yp = elmt_cell.elmt_Yp;
        elmt_cell.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cell.elmt_product73 = Reacs.elmt_product73;
        elmt_cell.elmt_product72 = Reacs.elmt_product72;
        elmt_cell.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cell.elmt_product77 = Reacs.elmt_product77;
        elmt_cell.elmt_product76 = Reacs.elmt_product76;
        elmt_cell.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cell.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_cell.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_cell.elmt_product69 = Reacs.elmt_product69;
        elmt_cell.elmt_product68 = Reacs.elmt_product68;
        elmt_cell.elmt_product85 = Reacs.elmt_product85;
        elmt_cell.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_cell.elmt_product84 = Reacs.elmt_product84;
        elmt_cell.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cell.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_cell.elmt_product89 = Reacs.elmt_product89;
        elmt_cell.elmt_product88 = Reacs.elmt_product88;
        elmt_cell.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_cell.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_cell.elmt_product81 = Reacs.elmt_product81;
        elmt_cell.elmt_product80 = Reacs.elmt_product80;
        elmt_cell.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_cell.elmt_product101 = Reacs.elmt_product101;
        elmt_cell.elmt_product104 = Reacs.elmt_product104;
        elmt_cell.elmt_product100 = Reacs.elmt_product100;
        elmt_cell.elmt_complex_r1 = Reacs.elmt_complex_r1;
        elmt_cell.elmt_phosphorylation_r10 = Reacs.elmt_phosphorylation_r10;
        elmt_cell.elmt_product105 = Reacs.elmt_product105;
        elmt_cell.elmt_product96 = Reacs.elmt_product96;
        elmt_cell.elmt_product93 = Reacs.elmt_product93;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_product97 = Reacs.elmt_product97;
        elmt_cell.elmt_complex_r2 = Reacs.elmt_complex_r2;
        elmt_cell.elmt_complex_r3 = Reacs.elmt_complex_r3;
        elmt_cell.elmt_complex_r4 = Reacs.elmt_complex_r4;
        elmt_cell.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_cell.elmt_complex_r5 = Reacs.elmt_complex_r5;
        elmt_cell.elmt_complex_r6 = Reacs.elmt_complex_r6;
        elmt_cell.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_cell.elmt_product92 = Reacs.elmt_product92;
        elmt_cell.elmt_complex_r7 = Reacs.elmt_complex_r7;
        elmt_cell.elmt_complex_r8 = Reacs.elmt_complex_r8;
        elmt_cell.elmt_complex_r9 = Reacs.elmt_complex_r9;
        elmt_cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cell.elmt_product23 = Reacs.elmt_product23;
        elmt_cell.elmt_product22 = Reacs.elmt_product22;
        elmt_cell.elmt_product20 = Reacs.elmt_product20;
        elmt_cell.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_product16 = Reacs.elmt_product16;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_reactant103 = Reacs.elmt_reactant103;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;
        elmt_cell.elmt_reactant102 = Reacs.elmt_reactant102;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;
        elmt_cell.elmt_reactant83 = Reacs.elmt_reactant83;
        elmt_cell.elmt_reactant86 = Reacs.elmt_reactant86;
        elmt_cell.elmt_product34 = Reacs.elmt_product34;
        elmt_cell.elmt_product32 = Reacs.elmt_product32;
        elmt_cell.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_cell.elmt_product31 = Reacs.elmt_product31;
        elmt_cell.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_product26 = Reacs.elmt_product26;
        elmt_cell.elmt_product25 = Reacs.elmt_product25;
        elmt_cell.elmt_product29 = Reacs.elmt_product29;
        elmt_cell.elmt_product28 = Reacs.elmt_product28;
        elmt_cell.elmt_product41 = Reacs.elmt_product41;
        elmt_cell.elmt_reactant94 = Reacs.elmt_reactant94;
        elmt_cell.elmt_reactant95 = Reacs.elmt_reactant95;
        elmt_cell.elmt_product45 = Reacs.elmt_product45;
        elmt_cell.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_cell.elmt_reactant91 = Reacs.elmt_reactant91;
        elmt_cell.elmt_product43 = Reacs.elmt_product43;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_reactant98 = Reacs.elmt_reactant98;
        elmt_cell.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product37 = Reacs.elmt_product37;
        elmt_cell.elmt_product35 = Reacs.elmt_product35;
        elmt_cell.elmt_product39 = Reacs.elmt_product39;
        elmt_cell.elmt_phosphorylation_r5 = Reacs.elmt_phosphorylation_r5;
        elmt_cell.elmt_phosphorylation_r6 = Reacs.elmt_phosphorylation_r6;
        elmt_cell.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_cell.elmt_product51 = Reacs.elmt_product51;
        elmt_cell.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_cell.elmt_phosphorylation_r7 = Reacs.elmt_phosphorylation_r7;
        elmt_cell.elmt_phosphorylation_r8 = Reacs.elmt_phosphorylation_r8;
        elmt_cell.elmt_phosphorylation_r9 = Reacs.elmt_phosphorylation_r9;
        elmt_cell.elmt_product55 = Reacs.elmt_product55;
        elmt_cell.elmt_product54 = Reacs.elmt_product54;
        elmt_cell.elmt_phosphorylation_r1 = Reacs.elmt_phosphorylation_r1;
        elmt_cell.elmt_phosphorylation_r2 = Reacs.elmt_phosphorylation_r2;
        elmt_cell.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_cell.elmt_phosphorylation_r3 = Reacs.elmt_phosphorylation_r3;
        elmt_cell.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_cell.elmt_phosphorylation_r4 = Reacs.elmt_phosphorylation_r4;
        elmt_cell.elmt_phosphotransfer_r11 = Reacs.elmt_phosphotransfer_r11;
        elmt_cell.elmt_phosphotransfer_r12 = Reacs.elmt_phosphotransfer_r12;
        elmt_cell.elmt_complex_r10 = Reacs.elmt_complex_r10;
        elmt_cell.elmt_product49 = Reacs.elmt_product49;
        elmt_cell.elmt_phosphotransfer_r10 = Reacs.elmt_phosphotransfer_r10;
        elmt_cell.elmt_complex_r12 = Reacs.elmt_complex_r12;
        elmt_cell.elmt_product47 = Reacs.elmt_product47;
        elmt_cell.elmt_complex_r11 = Reacs.elmt_complex_r11;
        elmt_cell.elmt_product61 = Reacs.elmt_product61;
        elmt_cell.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_product60 = Reacs.elmt_product60;
        elmt_cell.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_product65 = Reacs.elmt_product65;
        elmt_cell.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_cell.elmt_product64 = Reacs.elmt_product64;
        elmt_cell.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt_cell.elmt_phosphotransfer_r8 = Reacs.elmt_phosphotransfer_r8;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_cell.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_cell.elmt_phosphotransfer_r9 = Reacs.elmt_phosphotransfer_r9;
        elmt_cell.elmt_phosphotransfer_r6 = Reacs.elmt_phosphotransfer_r6;
        elmt_cell.elmt_phosphotransfer_r7 = Reacs.elmt_phosphotransfer_r7;
        elmt_cell.elmt_phosphotransfer_r4 = Reacs.elmt_phosphotransfer_r4;
        elmt_cell.elmt_phosphotransfer_r5 = Reacs.elmt_phosphotransfer_r5;
        elmt_cell.elmt_phosphotransfer_r2 = Reacs.elmt_phosphotransfer_r2;
        elmt_cell.elmt_phosphotransfer_r3 = Reacs.elmt_phosphotransfer_r3;
        elmt_cell.elmt_phosphotransfer_r1 = Reacs.elmt_phosphotransfer_r1;
        elmt_cell.elmt_product57 = Reacs.elmt_product57;

end Bray1995_chemotaxis_receptorlinkedcomplex;
