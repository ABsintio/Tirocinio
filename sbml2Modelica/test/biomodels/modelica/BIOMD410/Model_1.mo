within BIOMD410;
model Model_1 "Wegner2012_TGFbetaSignalling_FeedbackLoops" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
        <rdf:Description rdf:about=\"#COPASI1\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2010-10-12T15:48:55Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <dcterms:creator>
            <rdf:Description>
              <vCard:EMAIL>wengler@dhbw-karlsruhe.de</vCard:EMAIL>
              <vCard:N>
                <rdf:Description>
                  <vCard:Family>Wengler (nee Wegner)</vCard:Family>
                  <vCard:Given>Katja</vCard:Given>
                </rdf:Description>
              </vCard:N>
              <vCard:ORG>
                <rdf:Description>
                  <vCard:Orgname>Cooperate State University Baden-Württemberg, Karlsruhe</vCard:Orgname>
                </rdf:Description>
              </vCard:ORG>
            </rdf:Description>
          </dcterms:creator>
          <dcterms:creator>
            <rdf:Description>
              <vCard:N>
                <rdf:Description>
                  <vCard:Family>Kummer</vCard:Family>
                  <vCard:Given>Ursula</vCard:Given>
                </rdf:Description>
              </vCard:N>
              <vCard:ORG>
                <rdf:Description>
                  <vCard:Orgname>University of Heidelberg</vCard:Orgname>
                </rdf:Description>
              </vCard:ORG>
            </rdf:Description>
          </dcterms:creator>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
                                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt__3 elmt__3;
    Class_elmt__1 elmt__1;

    equation
        Params.elmt_species_6 = elmt__1.elmt_species_6;
        Params.elmt__99 = elmt__1.elmt__99;
        Params.elmt__11 = elmt__3.elmt__11;
        Params.elmt_species_4 = elmt__1.elmt_species_4;
        Params.elmt_species_5 = elmt__1.elmt_species_5;
        Params.elmt_species_8 = elmt__1.elmt_species_8;
        Params.elmt__5 = elmt__3.elmt__5;
        Params.elmt_species_16 = elmt__3.elmt_species_16;
        Params.elmt__19 = elmt__3.elmt__19;
        Params.elmt_species_17 = elmt__3.elmt_species_17;
        Params.elmt_species_18 = elmt__3.elmt_species_18;
        Params.elmt_species_19 = elmt__3.elmt_species_19;
        Params.elmt__129 = elmt__1.elmt__129;
        Params.elmt__15 = elmt__3.elmt__15;
        Params.elmt__105 = elmt__1.elmt__105;
        Params.elmt__13 = elmt__3.elmt__13;
        Params.elmt__147 = elmt__1.elmt__147;
        Params.elmt_species_11 = elmt__1.elmt_species_11;
        Params.elmt__9 = elmt__3.elmt__9;
        Params.elmt__181 = elmt__1.elmt__181;
        Params.elmt__21 = elmt__3.elmt__21;
        Params.elmt_species_26 = elmt__3.elmt_species_26;
        Params.elmt_species_27 = elmt__3.elmt_species_27;
        Params.elmt__27 = elmt__3.elmt__27;
        Params.elmt_species_2 = elmt__1.elmt_species_2;
        Params.elmt_species_3 = elmt__1.elmt_species_3;
        Params.elmt__25 = elmt__3.elmt__25;
        Params.elmt_species_1 = elmt__1.elmt_species_1;
        Params.elmt_species_20 = elmt__3.elmt_species_20;
        Params.elmt_species_21 = elmt__3.elmt_species_21;
        Params.elmt__198 = elmt__1.elmt__198;
        Params.elmt_species_23 = elmt__3.elmt_species_23;
        Params.elmt__174 = elmt__1.elmt__174;
        Params.elmt__153 = elmt__1.elmt__153;
        Reacs.elmt__99 = elmt__1.elmt__99;
        Reacs.elmt__11 = elmt__3.elmt__11;
        Reacs.elmt__96 = elmt__1.elmt__96;
        Reacs.elmt__19 = elmt__3.elmt__19;
        Reacs.elmt__15 = elmt__3.elmt__15;
        Reacs.elmt__105 = elmt__1.elmt__105;
        Reacs.elmt__13 = elmt__3.elmt__13;
        Reacs.elmt__147 = elmt__1.elmt__147;
        Reacs.elmt_species_30 = elmt__3.elmt_species_30;
        Reacs.elmt_species_31 = elmt__3.elmt_species_31;
        Reacs.elmt__101 = elmt__1.elmt__101;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt__21 = elmt__3.elmt__21;
        Reacs.elmt_species_2 = elmt__1.elmt_species_2;
        Reacs.elmt__27 = elmt__3.elmt__27;
        Reacs.elmt_species_3 = elmt__1.elmt_species_3;
        Reacs.elmt__25 = elmt__3.elmt__25;
        Reacs.elmt_species_1 = elmt__1.elmt_species_1;
        Reacs.elmt__198 = elmt__1.elmt__198;
        Reacs.elmt__153 = elmt__1.elmt__153;
        Reacs.elmt_species_6 = elmt__1.elmt_species_6;
        Reacs.elmt_species_7 = elmt__1.elmt_species_7;
        Reacs.elmt_species_4 = elmt__1.elmt_species_4;
        Reacs.elmt_species_5 = elmt__1.elmt_species_5;
        Reacs.elmt__75 = elmt__1.elmt__75;
        Reacs.elmt_species_8 = elmt__1.elmt_species_8;
        Reacs.elmt_species_9 = elmt__1.elmt_species_9;
        Reacs.elmt_species_15 = elmt__1.elmt_species_15;
        Reacs.elmt_species_16 = elmt__3.elmt_species_16;
        Reacs.elmt__5 = elmt__3.elmt__5;
        Reacs.elmt_species_17 = elmt__3.elmt_species_17;
        Reacs.elmt__3 = elmt__3.elmt__3;
        Reacs.elmt_species_18 = elmt__3.elmt_species_18;
        Reacs.elmt__129 = elmt__1.elmt__129;
        Reacs.elmt_species_19 = elmt__3.elmt_species_19;
        Reacs.elmt__1 = elmt__1.elmt__1;
        Reacs.elmt__79 = elmt__1.elmt__79;
        Reacs.elmt_species_10 = elmt__1.elmt_species_10;
        Reacs.elmt_species_11 = elmt__1.elmt_species_11;
        Reacs.elmt__9 = elmt__3.elmt__9;
        Reacs.elmt_species_12 = elmt__1.elmt_species_12;
        Reacs.elmt_species_13 = elmt__1.elmt_species_13;
        Reacs.elmt_species_14 = elmt__1.elmt_species_14;
        Reacs.elmt__181 = elmt__1.elmt__181;
        Reacs.elmt__84 = elmt__1.elmt__84;
        Reacs.elmt_species_26 = elmt__3.elmt_species_26;
        Reacs.elmt_species_27 = elmt__3.elmt_species_27;
        Reacs.elmt_species_28 = elmt__3.elmt_species_28;
        Reacs.elmt_species_29 = elmt__3.elmt_species_29;
        Reacs.elmt_species_20 = elmt__3.elmt_species_20;
        Reacs.elmt_species_21 = elmt__3.elmt_species_21;
        Reacs.elmt_species_22 = elmt__3.elmt_species_22;
        Reacs.elmt_species_23 = elmt__3.elmt_species_23;
        Reacs.elmt__174 = elmt__1.elmt__174;
        Reacs.elmt_species_24 = elmt__3.elmt_species_24;
        Reacs.elmt_species_25 = elmt__3.elmt_species_25;
        elmt__3.elmt_reaction_70 = Reacs.elmt_reaction_70;
        elmt__3.elmt_reactant108 = Reacs.elmt_reactant108;
        elmt__3.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt__3.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt__3.elmt_reactant110 = Reacs.elmt_reactant110;
        elmt__3.elmt_reaction_69 = Reacs.elmt_reaction_69;
        elmt__3.elmt_reaction_63 = Reacs.elmt_reaction_63;
        elmt__3.elmt_reaction_64 = Reacs.elmt_reaction_64;
        elmt__3.elmt_reaction_62 = Reacs.elmt_reaction_62;
        elmt__3.elmt_reaction_68 = Reacs.elmt_reaction_68;
        elmt__3.elmt_reaction_65 = Reacs.elmt_reaction_65;
        elmt__3.elmt_reactant111 = Reacs.elmt_reactant111;
        elmt__3.elmt_product85 = Reacs.elmt_product85;
        elmt__3.elmt_reaction_60 = Reacs.elmt_reaction_60;
        elmt__3.elmt_product87 = Reacs.elmt_product87;
        elmt__3.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt__3.elmt_product182 = Reacs.elmt_product182;
        elmt__3.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt__3.elmt_product101 = Reacs.elmt_product101;
        elmt__3.elmt__29 = Reacs.elmt__29;
        elmt__3.elmt_reaction_58 = Reacs.elmt_reaction_58;
        elmt__3.elmt_reaction_59 = Reacs.elmt_reaction_59;
        elmt__3.elmt_product103 = Reacs.elmt_product103;
        elmt__3.elmt_product185 = Reacs.elmt_product185;
        elmt__3.elmt_product100 = Reacs.elmt_product100;
        elmt__3.elmt_product187 = Reacs.elmt_product187;
        elmt__3.elmt_reaction_52 = Reacs.elmt_reaction_52;
        elmt__3.elmt_reactant129 = Reacs.elmt_reactant129;
        elmt__3.elmt_reaction_53 = Reacs.elmt_reaction_53;
        elmt__3.elmt_product109 = Reacs.elmt_product109;
        elmt__3.elmt_reaction_50 = Reacs.elmt_reaction_50;
        elmt__3.elmt_product79 = Reacs.elmt_product79;
        elmt__3.elmt_reaction_56 = Reacs.elmt_reaction_56;
        elmt__3.elmt_reaction_57 = Reacs.elmt_reaction_57;
        elmt__3.elmt_reactant124 = Reacs.elmt_reactant124;
        elmt__3.elmt_reactant123 = Reacs.elmt_reactant123;
        elmt__3.elmt_reaction_54 = Reacs.elmt_reaction_54;
        elmt__3.elmt_reaction_55 = Reacs.elmt_reaction_55;
        elmt__3.elmt__172 = Reacs.elmt__172;
        elmt__3.elmt_product95 = Reacs.elmt_product95;
        elmt__3.elmt_product10 = Reacs.elmt_product10;
        elmt__3.elmt__33 = Reacs.elmt__33;
        elmt__3.elmt_product151 = Reacs.elmt_product151;
        elmt__3.elmt__31 = Reacs.elmt__31;
        elmt__3.elmt_reactant176 = Reacs.elmt_reactant176;
        elmt__3.elmt_product157 = Reacs.elmt_product157;
        elmt__3.elmt_reactant174 = Reacs.elmt_reactant174;
        elmt__3.elmt__39 = Reacs.elmt__39;
        elmt__3.elmt_reaction_48 = Reacs.elmt_reaction_48;
        elmt__3.elmt_reactant173 = Reacs.elmt_reactant173;
        elmt__3.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt__3.elmt_reactant171 = Reacs.elmt_reactant171;
        elmt__3.elmt__37 = Reacs.elmt__37;
        elmt__3.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt__3.elmt_reactant170 = Reacs.elmt_reactant170;
        elmt__3.elmt__35 = Reacs.elmt__35;
        elmt__3.elmt_product154 = Reacs.elmt_product154;
        elmt__3.elmt_reaction_41 = Reacs.elmt_reaction_41;
        elmt__3.elmt_reaction_46 = Reacs.elmt_reaction_46;
        elmt__3.elmt_reaction_44 = Reacs.elmt_reaction_44;
        elmt__3.elmt_reactant177 = Reacs.elmt_reactant177;
        elmt__3.elmt__164 = Reacs.elmt__164;
        elmt__3.elmt_product7 = Reacs.elmt_product7;
        elmt__3.elmt_product20 = Reacs.elmt_product20;
        elmt__3.elmt_product1 = Reacs.elmt_product1;
        elmt__3.elmt__43 = Reacs.elmt__43;
        elmt__3.elmt__41 = Reacs.elmt__41;
        elmt__3.elmt_product4 = Reacs.elmt_product4;
        elmt__3.elmt_product2 = Reacs.elmt_product2;
        elmt__3.elmt_reaction_38 = Reacs.elmt_reaction_38;
        elmt__3.elmt_reaction_36 = Reacs.elmt_reaction_36;
        elmt__3.elmt_reaction_37 = Reacs.elmt_reaction_37;
        elmt__3.elmt_reactant184 = Reacs.elmt_reactant184;
        elmt__3.elmt_product163 = Reacs.elmt_product163;
        elmt__3.elmt_reactant181 = Reacs.elmt_reactant181;
        elmt__3.elmt_product166 = Reacs.elmt_product166;
        elmt__3.elmt_reactant107 = Reacs.elmt_reactant107;
        elmt__3.elmt_reaction_30 = Reacs.elmt_reaction_30;
        elmt__3.elmt_product15 = Reacs.elmt_product15;
        elmt__3.elmt__178 = Reacs.elmt__178;
        elmt__3.elmt_product13 = Reacs.elmt_product13;
        elmt__3.elmt_reaction_35 = Reacs.elmt_reaction_35;
        elmt__3.elmt_reaction_32 = Reacs.elmt_reaction_32;
        elmt__3.elmt_reaction_33 = Reacs.elmt_reaction_33;
        elmt__3.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt__3.elmt_reactant86 = Reacs.elmt_reactant86;
        elmt__3.elmt_product135 = Reacs.elmt_product135;
        elmt__3.elmt_reactant153 = Reacs.elmt_reactant153;
        elmt__3.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt__3.elmt_reactant152 = Reacs.elmt_reactant152;
        elmt__3.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt__3.elmt_reactant150 = Reacs.elmt_reactant150;
        elmt__3.elmt_product131 = Reacs.elmt_product131;
        elmt__3.elmt_reaction_29 = Reacs.elmt_reaction_29;
        elmt__3.elmt_reactant159 = Reacs.elmt_reactant159;
        elmt__3.elmt_reactant158 = Reacs.elmt_reactant158;
        elmt__3.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt__3.elmt_reactant156 = Reacs.elmt_reactant156;
        elmt__3.elmt_reactant155 = Reacs.elmt_reactant155;
        elmt__3.elmt_product40 = Reacs.elmt_product40;
        elmt__3.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt__3.elmt_product42 = Reacs.elmt_product42;
        elmt__3.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt__3.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt__3.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt__3.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt__3.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt__3.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt__3.elmt_reactant165 = Reacs.elmt_reactant165;
        elmt__3.elmt_product145 = Reacs.elmt_product145;
        elmt__3.elmt_reactant164 = Reacs.elmt_reactant164;
        elmt__3.elmt_product148 = Reacs.elmt_product148;
        elmt__3.elmt_reactant162 = Reacs.elmt_reactant162;
        elmt__3.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt__3.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt__3.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt__3.elmt__156 = Reacs.elmt__156;
        elmt__3.elmt_product35 = Reacs.elmt_product35;
        elmt__3.elmt_product112 = Reacs.elmt_product112;
        elmt__3.elmt_reactant130 = Reacs.elmt_reactant130;
        elmt__3.elmt_product114 = Reacs.elmt_product114;
        elmt__3.elmt_reactant138 = Reacs.elmt_reactant138;
        elmt__3.elmt_product116 = Reacs.elmt_product116;
        elmt__3.elmt_reactant134 = Reacs.elmt_reactant134;
        elmt__3.elmt_reactant133 = Reacs.elmt_reactant133;
        elmt__3.elmt_product62 = Reacs.elmt_product62;
        elmt__3.elmt_product60 = Reacs.elmt_product60;
        elmt__3.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt__3.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt__3.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt__3.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt__3.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt__3.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt__3.elmt_reactant143 = Reacs.elmt_reactant143;
        elmt__3.elmt_reactant141 = Reacs.elmt_reactant141;
        elmt__3.elmt_product125 = Reacs.elmt_product125;
        elmt__3.elmt_product120 = Reacs.elmt_product120;
        elmt__3.elmt__139 = Reacs.elmt__139;
        elmt__3.elmt_reactant149 = Reacs.elmt_reactant149;
        elmt__3.elmt_reactant147 = Reacs.elmt_reactant147;
        elmt__3.elmt_reactant146 = Reacs.elmt_reactant146;
        elmt__3.elmt_reactant144 = Reacs.elmt_reactant144;
        elmt__1.elmt__194 = Reacs.elmt__194;
        elmt__1.elmt_product73 = Reacs.elmt_product73;
        elmt__1.elmt__192 = Reacs.elmt__192;
        elmt__1.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt__1.elmt_reaction_70 = Reacs.elmt_reaction_70;
        elmt__1.elmt_product76 = Reacs.elmt_product76;
        elmt__1.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt__1.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt__1.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt__1.elmt_product172 = Reacs.elmt_product172;
        elmt__1.elmt_product178 = Reacs.elmt_product178;
        elmt__1.elmt_reaction_69 = Reacs.elmt_reaction_69;
        elmt__1.elmt_product175 = Reacs.elmt_product175;
        elmt__1.elmt__103 = Reacs.elmt__103;
        elmt__1.elmt_reactant118 = Reacs.elmt_reactant118;
        elmt__1.elmt_reaction_63 = Reacs.elmt_reaction_63;
        elmt__1.elmt_reactant117 = Reacs.elmt_reactant117;
        elmt__1.elmt_reaction_61 = Reacs.elmt_reaction_61;
        elmt__1.elmt_product69 = Reacs.elmt_product69;
        elmt__1.elmt_product68 = Reacs.elmt_product68;
        elmt__1.elmt_reaction_62 = Reacs.elmt_reaction_62;
        elmt__1.elmt_reactant115 = Reacs.elmt_reactant115;
        elmt__1.elmt_reaction_67 = Reacs.elmt_reaction_67;
        elmt__1.elmt_reactant113 = Reacs.elmt_reactant113;
        elmt__1.elmt_reaction_68 = Reacs.elmt_reaction_68;
        elmt__1.elmt_reaction_66 = Reacs.elmt_reaction_66;
        elmt__1.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt__1.elmt_product83 = Reacs.elmt_product83;
        elmt__1.elmt_product89 = Reacs.elmt_product89;
        elmt__1.elmt_reactant119 = Reacs.elmt_reactant119;
        elmt__1.elmt_product80 = Reacs.elmt_product80;
        elmt__1.elmt_reaction_58 = Reacs.elmt_reaction_58;
        elmt__1.elmt_reaction_59 = Reacs.elmt_reaction_59;
        elmt__1.elmt_reaction_52 = Reacs.elmt_reaction_52;
        elmt__1.elmt_reactant127 = Reacs.elmt_reactant127;
        elmt__1.elmt_reaction_50 = Reacs.elmt_reaction_50;
        elmt__1.elmt_reaction_51 = Reacs.elmt_reaction_51;
        elmt__1.elmt_reactant126 = Reacs.elmt_reactant126;
        elmt__1.elmt_product106 = Reacs.elmt_product106;
        elmt__1.elmt_reactant122 = Reacs.elmt_reactant122;
        elmt__1.elmt__172 = Reacs.elmt__172;
        elmt__1.elmt_product98 = Reacs.elmt_product98;
        elmt__1.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt__1.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt__1.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt__1.elmt_product92 = Reacs.elmt_product92;
        elmt__1.elmt_product91 = Reacs.elmt_product91;
        elmt__1.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt__1.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt__1.elmt_reaction_49 = Reacs.elmt_reaction_49;
        elmt__1.elmt_reaction_47 = Reacs.elmt_reaction_47;
        elmt__1.elmt__35 = Reacs.elmt__35;
        elmt__1.elmt_reaction_41 = Reacs.elmt_reaction_41;
        elmt__1.elmt_reaction_42 = Reacs.elmt_reaction_42;
        elmt__1.elmt_reaction_40 = Reacs.elmt_reaction_40;
        elmt__1.elmt_reaction_45 = Reacs.elmt_reaction_45;
        elmt__1.elmt_reactant179 = Reacs.elmt_reactant179;
        elmt__1.elmt_reaction_43 = Reacs.elmt_reaction_43;
        elmt__1.elmt__164 = Reacs.elmt__164;
        elmt__1.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt__1.elmt_product22 = Reacs.elmt_product22;
        elmt__1.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt__1.elmt_product160 = Reacs.elmt_product160;
        elmt__1.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt__1.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt__1.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt__1.elmt_reaction_38 = Reacs.elmt_reaction_38;
        elmt__1.elmt_reactant186 = Reacs.elmt_reactant186;
        elmt__1.elmt_reaction_39 = Reacs.elmt_reaction_39;
        elmt__1.elmt_reaction_37 = Reacs.elmt_reaction_37;
        elmt__1.elmt_product169 = Reacs.elmt_product169;
        elmt__1.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt__1.elmt_reactant183 = Reacs.elmt_reactant183;
        elmt__1.elmt_reactant180 = Reacs.elmt_reactant180;
        elmt__1.elmt_reaction_30 = Reacs.elmt_reaction_30;
        elmt__1.elmt_reaction_31 = Reacs.elmt_reaction_31;
        elmt__1.elmt_reactant105 = Reacs.elmt_reactant105;
        elmt__1.elmt__178 = Reacs.elmt__178;
        elmt__1.elmt_reactant104 = Reacs.elmt_reactant104;
        elmt__1.elmt_reaction_34 = Reacs.elmt_reaction_34;
        elmt__1.elmt_reactant102 = Reacs.elmt_reactant102;
        elmt__1.elmt_reaction_33 = Reacs.elmt_reaction_33;
        elmt__1.elmt_product30 = Reacs.elmt_product30;
        elmt__1.elmt_product33 = Reacs.elmt_product33;
        elmt__1.elmt_product32 = Reacs.elmt_product32;
        elmt__1.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt__1.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt__1.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt__1.elmt_reaction_27 = Reacs.elmt_reaction_27;
        elmt__1.elmt_reaction_28 = Reacs.elmt_reaction_28;
        elmt__1.elmt__149 = Reacs.elmt__149;
        elmt__1.elmt_product132 = Reacs.elmt_product132;
        elmt__1.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt__1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt__1.elmt_product25 = Reacs.elmt_product25;
        elmt__1.elmt_product139 = Reacs.elmt_product139;
        elmt__1.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt__1.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt__1.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt__1.elmt_product28 = Reacs.elmt_product28;
        elmt__1.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt__1.elmt_reactant94 = Reacs.elmt_reactant94;
        elmt__1.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt__1.elmt_reactant97 = Reacs.elmt_reactant97;
        elmt__1.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt__1.elmt_product44 = Reacs.elmt_product44;
        elmt__1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt__1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt__1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt__1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt__1.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt__1.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt__1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt__1.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt__1.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt__1.elmt_product142 = Reacs.elmt_product142;
        elmt__1.elmt_reactant161 = Reacs.elmt_reactant161;
        elmt__1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt__1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt__1.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt__1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt__1.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt__1.elmt_product38 = Reacs.elmt_product38;
        elmt__1.elmt__156 = Reacs.elmt__156;
        elmt__1.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt__1.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt__1.elmt_reactant168 = Reacs.elmt_reactant168;
        elmt__1.elmt_reactant167 = Reacs.elmt_reactant167;
        elmt__1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt__1.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt__1.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt__1.elmt_product52 = Reacs.elmt_product52;
        elmt__1.elmt_product51 = Reacs.elmt_product51;
        elmt__1.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt__1.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt__1.elmt_product56 = Reacs.elmt_product56;
        elmt__1.elmt_product55 = Reacs.elmt_product55;
        elmt__1.elmt_product54 = Reacs.elmt_product54;
        elmt__1.elmt_product53 = Reacs.elmt_product53;
        elmt__1.elmt__77 = Reacs.elmt__77;
        elmt__1.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt__1.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt__1.elmt__125 = Reacs.elmt__125;
        elmt__1.elmt_reactant137 = Reacs.elmt_reactant137;
        elmt__1.elmt_product46 = Reacs.elmt_product46;
        elmt__1.elmt_reactant136 = Reacs.elmt_reactant136;
        elmt__1.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt__1.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt__1.elmt_product67 = Reacs.elmt_product67;
        elmt__1.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt__1.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt__1.elmt__86 = Reacs.elmt__86;
        elmt__1.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt__1.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt__1.elmt_reactant140 = Reacs.elmt_reactant140;
        elmt__1.elmt_product121 = Reacs.elmt_product121;
        elmt__1.elmt__139 = Reacs.elmt__139;
        elmt__1.elmt_product57 = Reacs.elmt_product57;
        elmt__1.elmt_product128 = Reacs.elmt_product128;
        elmt__1.elmt__132 = Reacs.elmt__132;

end Model_1;
