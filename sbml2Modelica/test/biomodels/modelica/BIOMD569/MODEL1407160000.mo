within BIOMD569;
model MODEL1407160000 "Dutta-Roy2015 - Opening of the multiple AMPA receptor conductance states" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-07-02T11:14:45Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_synapse elmt_synapse;

    equation
        Reacs.elmt_M2 = elmt_synapse.elmt_M2;
        Reacs.elmt_M3 = elmt_synapse.elmt_M3;
        Reacs.elmt_M0 = elmt_synapse.elmt_M0;
        Reacs.elmt_M1 = elmt_synapse.elmt_M1;
        Reacs.elmt_MSk3 = Params.elmt_MSk3;
        Reacs.elmt_Bkoff = Params.elmt_Bkoff;
        Reacs.elmt_MSk2 = Params.elmt_MSk2;
        Reacs.elmt_MSk1 = Params.elmt_MSk1;
        Reacs.elmt_MSk0 = Params.elmt_MSk0;
        Reacs.elmt_M4 = elmt_synapse.elmt_M4;
        Reacs.elmt_SBk4 = Params.elmt_SBk4;
        Reacs.elmt_SBk3 = Params.elmt_SBk3;
        Reacs.elmt_BSk0 = Params.elmt_BSk0;
        Reacs.elmt_Mkoff = Params.elmt_Mkoff;
        Reacs.elmt_Lkon = Params.elmt_Lkon;
        Reacs.elmt_BSk3 = Params.elmt_BSk3;
        Reacs.elmt_BSk4 = Params.elmt_BSk4;
        Reacs.elmt_BSk1 = Params.elmt_BSk1;
        Reacs.elmt_BSk2 = Params.elmt_BSk2;
        Reacs.elmt_SBk0 = Params.elmt_SBk0;
        Reacs.elmt_SBk2 = Params.elmt_SBk2;
        Reacs.elmt_SBk1 = Params.elmt_SBk1;
        Reacs.elmt_LMk0 = Params.elmt_LMk0;
        Reacs.elmt_B0 = elmt_synapse.elmt_B0;
        Reacs.elmt_LMk3 = Params.elmt_LMk3;
        Reacs.elmt_LMk4 = Params.elmt_LMk4;
        Reacs.elmt_LMk1 = Params.elmt_LMk1;
        Reacs.elmt_LMk2 = Params.elmt_LMk2;
        Reacs.elmt_Skon = Params.elmt_Skon;
        Reacs.elmt_MSk4 = Params.elmt_MSk4;
        Reacs.elmt_MLk2 = Params.elmt_MLk2;
        Reacs.elmt_MLk1 = Params.elmt_MLk1;
        Reacs.elmt_MLk0 = Params.elmt_MLk0;
        Reacs.elmt_S4 = elmt_synapse.elmt_S4;
        Reacs.elmt_S2 = elmt_synapse.elmt_S2;
        Reacs.elmt_S3 = elmt_synapse.elmt_S3;
        Reacs.elmt_SMk1 = Params.elmt_SMk1;
        Reacs.elmt_SMk0 = Params.elmt_SMk0;
        Reacs.elmt_SMk3 = Params.elmt_SMk3;
        Reacs.elmt_Bkon = Params.elmt_Bkon;
        Reacs.elmt_SMk2 = Params.elmt_SMk2;
        Reacs.elmt_SMk4 = Params.elmt_SMk4;
        Reacs.elmt_MLk4 = Params.elmt_MLk4;
        Reacs.elmt_MLk3 = Params.elmt_MLk3;
        Reacs.elmt_synapse = elmt_synapse.elmt_synapse;
        Reacs.elmt_B3 = elmt_synapse.elmt_B3;
        Reacs.elmt_B4 = elmt_synapse.elmt_B4;
        Reacs.elmt_B1 = elmt_synapse.elmt_B1;
        Reacs.elmt_B2 = elmt_synapse.elmt_B2;
        Reacs.elmt_S0 = elmt_synapse.elmt_S0;
        Reacs.elmt_S1 = elmt_synapse.elmt_S1;
        Reacs.elmt_L1 = elmt_synapse.elmt_L1;
        Reacs.elmt_L2 = elmt_synapse.elmt_L2;
        Reacs.elmt_L0 = elmt_synapse.elmt_L0;
        Reacs.elmt_Skoff = Params.elmt_Skoff;
        Reacs.elmt_L3 = elmt_synapse.elmt_L3;
        Reacs.elmt_L4 = elmt_synapse.elmt_L4;
        Reacs.elmt_Lkoff = Params.elmt_Lkoff;
        Reacs.elmt_glu = elmt_synapse.elmt_glu;
        Reacs.elmt_Mkon = Params.elmt_Mkon;
        elmt_synapse.elmt_L0____M0 = Reacs.elmt_L0____M0;
        elmt_synapse.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_synapse.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_synapse.elmt_S3____M3 = Reacs.elmt_S3____M3;
        elmt_synapse.elmt_S1____S2 = Reacs.elmt_S1____S2;
        elmt_synapse.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_synapse.elmt_S1____S0 = Reacs.elmt_S1____S0;
        elmt_synapse.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_synapse.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_synapse.elmt_M3____M4 = Reacs.elmt_M3____M4;
        elmt_synapse.elmt_M3____M2 = Reacs.elmt_M3____M2;
        elmt_synapse.elmt_B3____S3 = Reacs.elmt_B3____S3;
        elmt_synapse.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_synapse.elmt_L0____L1 = Reacs.elmt_L0____L1;
        elmt_synapse.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_synapse.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_synapse.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_synapse.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_synapse.elmt_B4____B3 = Reacs.elmt_B4____B3;
        elmt_synapse.elmt_product101 = Reacs.elmt_product101;
        elmt_synapse.elmt_product104 = Reacs.elmt_product104;
        elmt_synapse.elmt_product100 = Reacs.elmt_product100;
        elmt_synapse.elmt_product106 = Reacs.elmt_product106;
        elmt_synapse.elmt_product107 = Reacs.elmt_product107;
        elmt_synapse.elmt_B4____S4 = Reacs.elmt_B4____S4;
        elmt_synapse.elmt_L1____L2 = Reacs.elmt_L1____L2;
        elmt_synapse.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_synapse.elmt_L1____L0 = Reacs.elmt_L1____L0;
        elmt_synapse.elmt_product11 = Reacs.elmt_product11;
        elmt_synapse.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_synapse.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_synapse.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_synapse.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_synapse.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_synapse.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_synapse.elmt_L1____M1 = Reacs.elmt_L1____M1;
        elmt_synapse.elmt_product23 = Reacs.elmt_product23;
        elmt_synapse.elmt_product21 = Reacs.elmt_product21;
        elmt_synapse.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_synapse.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_synapse.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_synapse.elmt_S0____S1 = Reacs.elmt_S0____S1;
        elmt_synapse.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_synapse.elmt_M3____L3 = Reacs.elmt_M3____L3;
        elmt_synapse.elmt_S1____B1 = Reacs.elmt_S1____B1;
        elmt_synapse.elmt_M2____M3 = Reacs.elmt_M2____M3;
        elmt_synapse.elmt_product15 = Reacs.elmt_product15;
        elmt_synapse.elmt_product13 = Reacs.elmt_product13;
        elmt_synapse.elmt_product19 = Reacs.elmt_product19;
        elmt_synapse.elmt_M2____M1 = Reacs.elmt_M2____M1;
        elmt_synapse.elmt_product17 = Reacs.elmt_product17;
        elmt_synapse.elmt_L4____M4 = Reacs.elmt_L4____M4;
        elmt_synapse.elmt_reactant153 = Reacs.elmt_reactant153;
        elmt_synapse.elmt_reactant151 = Reacs.elmt_reactant151;
        elmt_synapse.elmt_reactant150 = Reacs.elmt_reactant150;
        elmt_synapse.elmt_L2____L1 = Reacs.elmt_L2____L1;
        elmt_synapse.elmt_M2____L2 = Reacs.elmt_M2____L2;
        elmt_synapse.elmt_L2____L3 = Reacs.elmt_L2____L3;
        elmt_synapse.elmt_S2____S1 = Reacs.elmt_S2____S1;
        elmt_synapse.elmt_M1____M2 = Reacs.elmt_M1____M2;
        elmt_synapse.elmt_M1____M0 = Reacs.elmt_M1____M0;
        elmt_synapse.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_synapse.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_synapse.elmt_S2____B2 = Reacs.elmt_S2____B2;
        elmt_synapse.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_synapse.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_synapse.elmt_L2____M2 = Reacs.elmt_L2____M2;
        elmt_synapse.elmt_S2____S3 = Reacs.elmt_S2____S3;
        elmt_synapse.elmt_S3____S4 = Reacs.elmt_S3____S4;
        elmt_synapse.elmt_S3____S2 = Reacs.elmt_S3____S2;
        elmt_synapse.elmt_M1____L1 = Reacs.elmt_M1____L1;
        elmt_synapse.elmt_reactant132 = Reacs.elmt_reactant132;
        elmt_synapse.elmt_S3____B3 = Reacs.elmt_S3____B3;
        elmt_synapse.elmt_reactant139 = Reacs.elmt_reactant139;
        elmt_synapse.elmt_reactant138 = Reacs.elmt_reactant138;
        elmt_synapse.elmt_reactant135 = Reacs.elmt_reactant135;
        elmt_synapse.elmt_reactant133 = Reacs.elmt_reactant133;
        elmt_synapse.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_synapse.elmt_M0____L0 = Reacs.elmt_M0____L0;
        elmt_synapse.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_synapse.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_synapse.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_synapse.elmt_S4____S3 = Reacs.elmt_S4____S3;
        elmt_synapse.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_synapse.elmt_L4____L3 = Reacs.elmt_L4____L3;
        elmt_synapse.elmt_reactant141 = Reacs.elmt_reactant141;
        elmt_synapse.elmt_reactant147 = Reacs.elmt_reactant147;
        elmt_synapse.elmt_S4____B4 = Reacs.elmt_S4____B4;
        elmt_synapse.elmt_reactant145 = Reacs.elmt_reactant145;
        elmt_synapse.elmt_reactant144 = Reacs.elmt_reactant144;
        elmt_synapse.elmt_product74 = Reacs.elmt_product74;
        elmt_synapse.elmt_M0____M1 = Reacs.elmt_M0____M1;
        elmt_synapse.elmt_product71 = Reacs.elmt_product71;
        elmt_synapse.elmt_product77 = Reacs.elmt_product77;
        elmt_synapse.elmt_product76 = Reacs.elmt_product76;
        elmt_synapse.elmt_reactant109 = Reacs.elmt_reactant109;
        elmt_synapse.elmt_reactant108 = Reacs.elmt_reactant108;
        elmt_synapse.elmt_L3____L4 = Reacs.elmt_L3____L4;
        elmt_synapse.elmt_product70 = Reacs.elmt_product70;
        elmt_synapse.elmt_L3____M3 = Reacs.elmt_L3____M3;
        elmt_synapse.elmt_reactant117 = Reacs.elmt_reactant117;
        elmt_synapse.elmt_product68 = Reacs.elmt_product68;
        elmt_synapse.elmt_reactant115 = Reacs.elmt_reactant115;
        elmt_synapse.elmt_reactant114 = Reacs.elmt_reactant114;
        elmt_synapse.elmt_reactant111 = Reacs.elmt_reactant111;
        elmt_synapse.elmt_B1____B2 = Reacs.elmt_B1____B2;
        elmt_synapse.elmt_product83 = Reacs.elmt_product83;
        elmt_synapse.elmt_product82 = Reacs.elmt_product82;
        elmt_synapse.elmt_product89 = Reacs.elmt_product89;
        elmt_synapse.elmt_product88 = Reacs.elmt_product88;
        elmt_synapse.elmt_product86 = Reacs.elmt_product86;
        elmt_synapse.elmt_B1____S1 = Reacs.elmt_B1____S1;
        elmt_synapse.elmt_product80 = Reacs.elmt_product80;
        elmt_synapse.elmt_reactant121 = Reacs.elmt_reactant121;
        elmt_synapse.elmt_reactant120 = Reacs.elmt_reactant120;
        elmt_synapse.elmt_S0____M0 = Reacs.elmt_S0____M0;
        elmt_synapse.elmt_L3____L2 = Reacs.elmt_L3____L2;
        elmt_synapse.elmt_reactant129 = Reacs.elmt_reactant129;
        elmt_synapse.elmt_reactant127 = Reacs.elmt_reactant127;
        elmt_synapse.elmt_reactant126 = Reacs.elmt_reactant126;
        elmt_synapse.elmt_B1____B0 = Reacs.elmt_B1____B0;
        elmt_synapse.elmt_reactant123 = Reacs.elmt_reactant123;
        elmt_synapse.elmt_product95 = Reacs.elmt_product95;
        elmt_synapse.elmt_B0____B1 = Reacs.elmt_B0____B1;
        elmt_synapse.elmt_product94 = Reacs.elmt_product94;
        elmt_synapse.elmt_product98 = Reacs.elmt_product98;
        elmt_synapse.elmt_product92 = Reacs.elmt_product92;
        elmt_synapse.elmt_B0____S0 = Reacs.elmt_B0____S0;
        elmt_synapse.elmt_product152 = Reacs.elmt_product152;
        elmt_synapse.elmt_product155 = Reacs.elmt_product155;
        elmt_synapse.elmt_product154 = Reacs.elmt_product154;
        elmt_synapse.elmt_M3____S3 = Reacs.elmt_M3____S3;
        elmt_synapse.elmt_product9 = Reacs.elmt_product9;
        elmt_synapse.elmt_product7 = Reacs.elmt_product7;
        elmt_synapse.elmt_product1 = Reacs.elmt_product1;
        elmt_synapse.elmt_M4____S4 = Reacs.elmt_M4____S4;
        elmt_synapse.elmt_product5 = Reacs.elmt_product5;
        elmt_synapse.elmt_product3 = Reacs.elmt_product3;
        elmt_synapse.elmt_reactant105 = Reacs.elmt_reactant105;
        elmt_synapse.elmt_reactant103 = Reacs.elmt_reactant103;
        elmt_synapse.elmt_reactant102 = Reacs.elmt_reactant102;
        elmt_synapse.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_synapse.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_synapse.elmt_product33 = Reacs.elmt_product33;
        elmt_synapse.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_synapse.elmt_product31 = Reacs.elmt_product31;
        elmt_synapse.elmt_B2____B1 = Reacs.elmt_B2____B1;
        elmt_synapse.elmt_B2____B3 = Reacs.elmt_B2____B3;
        elmt_synapse.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_synapse.elmt_product134 = Reacs.elmt_product134;
        elmt_synapse.elmt_product137 = Reacs.elmt_product137;
        elmt_synapse.elmt_product136 = Reacs.elmt_product136;
        elmt_synapse.elmt_product131 = Reacs.elmt_product131;
        elmt_synapse.elmt_product130 = Reacs.elmt_product130;
        elmt_synapse.elmt_product27 = Reacs.elmt_product27;
        elmt_synapse.elmt_product25 = Reacs.elmt_product25;
        elmt_synapse.elmt_S0____B0 = Reacs.elmt_S0____B0;
        elmt_synapse.elmt_product29 = Reacs.elmt_product29;
        elmt_synapse.elmt_product41 = Reacs.elmt_product41;
        elmt_synapse.elmt_S4____M4 = Reacs.elmt_S4____M4;
        elmt_synapse.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_synapse.elmt_reactant97 = Reacs.elmt_reactant97;
        elmt_synapse.elmt_product45 = Reacs.elmt_product45;
        elmt_synapse.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_synapse.elmt_reactant91 = Reacs.elmt_reactant91;
        elmt_synapse.elmt_product43 = Reacs.elmt_product43;
        elmt_synapse.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_synapse.elmt_product140 = Reacs.elmt_product140;
        elmt_synapse.elmt_M4____M3 = Reacs.elmt_M4____M3;
        elmt_synapse.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_synapse.elmt_M2____S2 = Reacs.elmt_M2____S2;
        elmt_synapse.elmt_product146 = Reacs.elmt_product146;
        elmt_synapse.elmt_product148 = Reacs.elmt_product148;
        elmt_synapse.elmt_M4____L4 = Reacs.elmt_M4____L4;
        elmt_synapse.elmt_product142 = Reacs.elmt_product142;
        elmt_synapse.elmt_product143 = Reacs.elmt_product143;
        elmt_synapse.elmt_product37 = Reacs.elmt_product37;
        elmt_synapse.elmt_product35 = Reacs.elmt_product35;
        elmt_synapse.elmt_product149 = Reacs.elmt_product149;
        elmt_synapse.elmt_product39 = Reacs.elmt_product39;
        elmt_synapse.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_synapse.elmt_product51 = Reacs.elmt_product51;
        elmt_synapse.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_synapse.elmt_product55 = Reacs.elmt_product55;
        elmt_synapse.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_synapse.elmt_product53 = Reacs.elmt_product53;
        elmt_synapse.elmt_M0____S0 = Reacs.elmt_M0____S0;
        elmt_synapse.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_synapse.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_synapse.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_synapse.elmt_product113 = Reacs.elmt_product113;
        elmt_synapse.elmt_product112 = Reacs.elmt_product112;
        elmt_synapse.elmt_S1____M1 = Reacs.elmt_S1____M1;
        elmt_synapse.elmt_product110 = Reacs.elmt_product110;
        elmt_synapse.elmt_product49 = Reacs.elmt_product49;
        elmt_synapse.elmt_product47 = Reacs.elmt_product47;
        elmt_synapse.elmt_product116 = Reacs.elmt_product116;
        elmt_synapse.elmt_product119 = Reacs.elmt_product119;
        elmt_synapse.elmt_product118 = Reacs.elmt_product118;
        elmt_synapse.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_synapse.elmt_product62 = Reacs.elmt_product62;
        elmt_synapse.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_synapse.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_synapse.elmt_product65 = Reacs.elmt_product65;
        elmt_synapse.elmt_product64 = Reacs.elmt_product64;
        elmt_synapse.elmt_B3____B4 = Reacs.elmt_B3____B4;
        elmt_synapse.elmt_M1____S1 = Reacs.elmt_M1____S1;
        elmt_synapse.elmt_B3____B2 = Reacs.elmt_B3____B2;
        elmt_synapse.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_synapse.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_synapse.elmt_product124 = Reacs.elmt_product124;
        elmt_synapse.elmt_product125 = Reacs.elmt_product125;
        elmt_synapse.elmt_product122 = Reacs.elmt_product122;
        elmt_synapse.elmt_B2____S2 = Reacs.elmt_B2____S2;
        elmt_synapse.elmt_S2____M2 = Reacs.elmt_S2____M2;
        elmt_synapse.elmt_product59 = Reacs.elmt_product59;
        elmt_synapse.elmt_product57 = Reacs.elmt_product57;
        elmt_synapse.elmt_product128 = Reacs.elmt_product128;

end MODEL1407160000;
